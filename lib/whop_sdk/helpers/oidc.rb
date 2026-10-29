# frozen_string_literal: true

require "json"
require "net/http"
require "time"
require "uri"

module WhopSDK
  module Helpers
    # Trades your cloud provider's OIDC identity token for a short-lived Whop access token, so a
    # workload authenticates without an API key. The generated client sets its Authorization
    # header once, when it is built, so this returns a token to build it with rather than renewing
    # one. The token lasts an hour by default and up to three with expires_at.
    #
    #   whop = Whop_sdk::Client.new(
    #     token: WhopSDK::Helpers::Oidc.access_token(
    #       role_id: "aurl_xxxxxxxxxxxxx",
    #       identity_token: WhopSDK::Helpers::Oidc.github_actions_identity_token
    #     )
    #   )
    #
    # It uses only the standard library, never generated client code, so it survives the client
    # being regenerated.
    module Oidc
      DEFAULT_AUDIENCE = "https://api.whop.com"
      DEFAULT_BASE_URL = "https://api.whop.com/api/v1"
      GRANT_TYPE = "urn:ietf:params:oauth:grant-type:token-exchange"
      ID_TOKEN_TYPE = "urn:ietf:params:oauth:token-type:id_token"
      HTTP_TIMEOUT_SECONDS = 10
      GOOGLE_METADATA_IDENTITY_URL =
        "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/identity"

      # The exchange or the identity token request failed. +code+ is the API's error code when it sent one.
      class Error < StandardError
        attr_reader :status, :code

        def initialize(message, status: nil, code: nil)
          super(message)
          @status = status
          @code = code
        end
      end

      # Exchanges an identity token for an access token that assumes +role_id+ (prefixed aurl_), and
      # returns the access token. +identity_token+ is the token from your provider, or anything that
      # responds to +call+ and returns one. Pass +base_url+ for another environment, for example
      # https://sandbox-api.whop.com/api/v1, and +expires_at+ (a Time) for an expiry other than an hour.
      def self.access_token(role_id:, identity_token:, base_url: DEFAULT_BASE_URL, expires_at: nil)
        raise Error, "Pass the role to assume as role_id." if role_id.to_s.empty?

        subject_token = identity_token.respond_to?(:call) ? identity_token.call : identity_token
        body = {
          grant_type: GRANT_TYPE,
          subject_token_type: ID_TOKEN_TYPE,
          subject_token: subject_token,
          role_id: role_id,
          expires_at: expires_at&.getutc&.iso8601
        }.compact

        uri = URI("#{base_url.to_s.chomp("/")}/access_tokens/exchange")
        response = request(uri, Net::HTTP::Post.new(uri, "Content-Type" => "application/json").tap { _1.body = JSON.generate(body) })
        payload = parse(response.body)

        unless response.is_a?(Net::HTTPSuccess)
          error = payload["error"].is_a?(Hash) ? payload["error"] : {}
          raise Error.new(error["message"] || "The token exchange failed with #{response.code}.", status: response.code.to_i, code: error["code"])
        end

        access_token = payload["access_token"]
        raise Error.new("The token exchange returned no access token.", status: response.code.to_i) unless access_token.is_a?(String)

        access_token
      end

      # Reads the job's identity token from GitHub Actions. The job needs permissions: id-token: write.
      def self.github_actions_identity_token(audience: DEFAULT_AUDIENCE)
        request_url = ENV.fetch("ACTIONS_ID_TOKEN_REQUEST_URL", "")
        request_token = ENV.fetch("ACTIONS_ID_TOKEN_REQUEST_TOKEN", "")
        raise Error, "GitHub Actions did not provide an identity token. Give the job permissions: id-token: write." if request_url.empty? || request_token.empty?

        uri = URI(request_url)
        uri.query = URI.encode_www_form(URI.decode_www_form(uri.query.to_s).to_h.merge("audience" => audience))
        response = request(uri, Net::HTTP::Get.new(uri, "Authorization" => "Bearer #{request_token}"))
        raise Error.new("GitHub Actions refused the identity token request with #{response.code}.", status: response.code.to_i) unless response.is_a?(Net::HTTPSuccess)

        value = parse(response.body)["value"]
        raise Error.new("GitHub Actions returned no identity token.", status: response.code.to_i) unless value.is_a?(String)

        value
      end

      # Reads the identity token of the service account the workload runs as from the Google Cloud
      # metadata server, on Cloud Run, Cloud Functions, Compute Engine, or GKE with Workload Identity.
      def self.google_cloud_identity_token(audience: DEFAULT_AUDIENCE)
        uri = URI("#{GOOGLE_METADATA_IDENTITY_URL}?#{URI.encode_www_form(audience: audience)}")
        response = request(uri, Net::HTTP::Get.new(uri, "Metadata-Flavor" => "Google"))
        raise Error.new("The Google Cloud metadata server refused the identity token request with #{response.code}.", status: response.code.to_i) unless response.is_a?(Net::HTTPSuccess)

        response.body.to_s.strip
      end

      def self.request(uri, http_request)
        Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: HTTP_TIMEOUT_SECONDS, read_timeout: HTTP_TIMEOUT_SECONDS) do |http|
          http.request(http_request)
        end
      end
      private_class_method :request

      def self.parse(body)
        parsed = JSON.parse(body.to_s)
        parsed.is_a?(Hash) ? parsed : {}
      rescue JSON::ParserError
        {}
      end
      private_class_method :parse
    end
  end
end
