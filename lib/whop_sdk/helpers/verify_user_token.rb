# frozen_string_literal: true

require "jwt"
require "json"
require "net/http"
require "openssl"
require "uri"

module WhopSDK
  module Helpers
    # Verifies Whop-issued x-whop-user-token JWTs. By default, fetches the
    # public signing keys from Whop's canonical JWKS endpoint and caches
    # them at module scope (TTL-bounded with a cooldown on refetch). The
    # behavior mirrors the TypeScript SDK's `createRemoteJWKSet` path so
    # that upgrading to a key rotation doesn't require a gem release.
    module VerifyUserToken
      USER_TOKEN_HEADER_NAME = "x-whop-user-token"
      DEFAULT_JWKS_URL = "https://api.whop.com/.well-known/jwks.json"
      TOKEN_ISSUER = "urn:whopcom:exp-proxy"
      TOKEN_ALGORITHM = "ES256"

      # 12h freshness window before a proactive refresh; 30s cooldown
      # between refetches when a kid lookup misses. Matches the TS SDK
      # (`cacheMaxAge: 12 * 60 * 60 * 1000, cooldownDuration: 30_000`).
      JWKS_CACHE_MAX_AGE_SECONDS = 12 * 60 * 60
      JWKS_COOLDOWN_SECONDS = 30

      # User token payload structure
      class UserTokenPayload
        # @return [String] The user id of the user who is making the request
        attr_reader :user_id

        # @return [String] The app id of the app that is making the request
        attr_reader :app_id

        def initialize(user_id:, app_id:)
          @user_id = user_id
          @app_id = app_id
        end
      end

      # Thread-safe, TTL-bounded remote JWKS cache with cooldown-gated
      # refresh on kid miss.
      class RemoteJwks
        def initialize(url, cache_max_age_seconds:, cooldown_seconds:)
          @url = url
          @cache_max_age_seconds = cache_max_age_seconds
          @cooldown_seconds = cooldown_seconds
          @mutex = Mutex.new
          @jwk_set = nil
          @fetched_at = nil
          @last_refresh_attempt_at = nil
        end

        # Returns the current JWK::Set, fetching or refreshing as needed.
        # When `force_refresh` is true, bypass the freshness window but
        # still honor the refetch cooldown.
        def jwk_set(force_refresh: false)
          @mutex.synchronize do
            now = monotonic_now
            cache_stale = @jwk_set.nil? || @fetched_at.nil? ||
                          (now - @fetched_at) > @cache_max_age_seconds
            cooldown_elapsed = @last_refresh_attempt_at.nil? ||
                               (now - @last_refresh_attempt_at) > @cooldown_seconds

            refresh_now = @jwk_set.nil? || cache_stale ||
                          (force_refresh && cooldown_elapsed)

            fetch! if refresh_now
            @jwk_set
          end
        end

        private

        def fetch!
          @last_refresh_attempt_at = monotonic_now
          response = Net::HTTP.get_response(URI(@url))

          unless response.is_a?(Net::HTTPSuccess)
            raise StandardError, "Failed to fetch JWKS from #{@url} (HTTP #{response.code})"
          end

          parsed = JSON.parse(response.body)
          @jwk_set = JWT::JWK::Set.new(parsed)
          @fetched_at = monotonic_now
        end

        def monotonic_now
          Process.clock_gettime(Process::CLOCK_MONOTONIC)
        end
      end

      # Module-level cache keyed by JWKS URL. One RemoteJwks instance per
      # distinct URL survives for the process lifetime.
      @jwks_cache = {}
      @jwks_cache_mutex = Mutex.new

      # @api private
      def self.remote_jwks_for(url)
        @jwks_cache_mutex.synchronize do
          @jwks_cache[url] ||= RemoteJwks.new(
            url,
            cache_max_age_seconds: JWKS_CACHE_MAX_AGE_SECONDS,
            cooldown_seconds: JWKS_COOLDOWN_SECONDS
          )
        end
      end

      # @api private — test-only hook to clear the module-level cache.
      def self.reset_jwks_cache!
        @jwks_cache_mutex.synchronize { @jwks_cache.clear }
      end

      # Extracts the user token from various input types.
      #
      # @param token_or_headers [String, Hash, nil] token string or headers hash
      # @param header_name [String, nil] header name (defaults to x-whop-user-token)
      # @return [String, nil]
      def self.get_user_token(token_or_headers, header_name: nil)
        header_name ||= USER_TOKEN_HEADER_NAME

        case token_or_headers
        when String
          token_or_headers
        when Hash
          token_or_headers[header_name] ||
            token_or_headers[header_name.downcase] ||
            token_or_headers[header_name.upcase]
        end
      end

      # Verifies a Whop user token.
      #
      # By default fetches the public signing keys from `jwks_url` (or the
      # canonical Whop endpoint) and caches them at module scope. Pass
      # `public_key` to verify against a static key instead — useful for
      # self-hosted / test setups where you know the exact key.
      #
      # @param token_or_headers [String, Hash, nil]
      # @param app_id [String, nil] Required; when set, the aud claim must match.
      # @param public_key [String, nil] PEM-encoded EC public key or JWK JSON.
      #   When set, skips remote JWKS fetching entirely.
      # @param jwks_url [String, nil] Override the JWKS endpoint URL. Defaults
      #   to {DEFAULT_JWKS_URL}.
      # @param header_name [String, nil] Header to read the token from.
      # @return [UserTokenPayload]
      # @raise [StandardError] on validation failure.
      def self.verify_user_token!(
        token_or_headers,
        app_id: nil,
        public_key: nil,
        jwks_url: nil,
        header_name: nil
      )
        token_string = get_user_token(token_or_headers, header_name: header_name)

        if token_string.nil? || token_string.empty?
          raise StandardError, <<~ERROR
            Whop user token not found.
            If you are the app developer, ensure you are developing in the whop.com iframe and have the dev proxy enabled.
          ERROR
        end

        payload = if public_key
          verify_with_static_key(token_string, public_key: public_key)
        else
          verify_with_remote_jwks(token_string, jwks_url: jwks_url || DEFAULT_JWKS_URL)
        end

        unless payload["sub"] && payload["aud"] && !payload["aud"].is_a?(Array)
          raise StandardError, "Invalid user token provided to verifyUserToken"
        end

        if app_id && payload["aud"] != app_id
          raise StandardError, "Invalid app id provided to verifyUserToken"
        end

        UserTokenPayload.new(user_id: payload["sub"], app_id: payload["aud"])
      end

      # @api private
      def self.verify_with_static_key(token_string, public_key:)
        key = import_static_key(public_key)
        decoded_payload, = JWT.decode(
          token_string,
          key,
          true,
          algorithm: TOKEN_ALGORITHM,
          iss: TOKEN_ISSUER,
          verify_iss: true
        )
        decoded_payload
      end

      # @api private
      def self.verify_with_remote_jwks(token_string, jwks_url:)
        remote = remote_jwks_for(jwks_url)

        # ruby-jwt calls the loader twice when the token's kid isn't found
        # in the current set — once normally, then again with
        # invalidate: true. The loader uses that signal to force a
        # cooldown-guarded refresh, mirroring jose's remote JWKS behavior.
        jwks_loader = ->(opts) { remote.jwk_set(force_refresh: opts[:invalidate]) }

        decoded_payload, = JWT.decode(
          token_string,
          nil,
          true,
          algorithms: [TOKEN_ALGORITHM],
          iss: TOKEN_ISSUER,
          verify_iss: true,
          jwks: jwks_loader,
          # Legacy tokens (pre-kid rollout) have no kid header. Let
          # ruby-jwt fall back to the first key in the set for those.
          allow_nil_kid: true
        )
        decoded_payload
      end

      # @api private
      def self.import_static_key(public_key)
        stripped = public_key.to_s.strip
        if stripped.start_with?("-----BEGIN")
          OpenSSL::PKey::EC.new(stripped)
        else
          JWT::JWK.new(JSON.parse(stripped)).verify_key
        end
      rescue JSON::ParserError, OpenSSL::PKey::ECError => e
        raise StandardError, "Invalid public key provided to verifyUserToken: #{e.message}"
      end
    end
  end
end
