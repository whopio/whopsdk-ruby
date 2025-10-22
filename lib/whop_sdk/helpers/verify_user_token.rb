# frozen_string_literal: true

require "jwt"
require "openssl"

module WhopSDK
  module Helpers
    module VerifyUserToken
      USER_TOKEN_HEADER_NAME = "x-whop-user-token"
      USER_TOKEN_VERIFICATION_KEY = <<~PEM
        -----BEGIN PUBLIC KEY-----
        MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAErz8a8vxvexHC0TLT91g7llOdDOsN
        uYiGEfic4Qhni+HMfRBuUphOh7F3k8QgwZc9UlL0AHmyYqtbhL9NuJes6w==
        -----END PUBLIC KEY-----
      PEM

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

      # Extracts the user token from various input types
      #
      # @param token_or_headers [String, Hash, nil] The token string or headers hash
      # @param header_name [String, nil] The header name to use (defaults to x-whop-user-token)
      # @return [String, nil] The extracted token or nil
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

      # Verifies a Whop user token
      #
      # @param token_or_headers [String, Hash, nil] The token string or headers hash
      # @param app_id [String, nil] The app id to verify against
      # @param public_key [String, nil] Optional custom public key (PEM format)
      # @param header_name [String, nil] The header name to use (defaults to x-whop-user-token)
      # @return [UserTokenPayload] The verified token payload
      # @raise [StandardError] If verification fails
      def self.verify_user_token!(
        token_or_headers,
        app_id: nil,
        public_key: nil,
        header_name: nil
      )
        token_string = get_user_token(token_or_headers, header_name: header_name)

        if token_string.nil? || token_string.empty?
          raise StandardError, <<~ERROR
            Whop user token not found.
            If you are the app developer, ensure you are developing in the whop.com iframe and have the dev proxy enabled.
          ERROR
        end

        pem_string = public_key || USER_TOKEN_VERIFICATION_KEY
        key = OpenSSL::PKey::EC.new(pem_string)

        # Verify the JWT
        payload, _header = JWT.decode(
          token_string,
          key,
          true,
          algorithm: "ES256",
          iss: "urn:whopcom:exp-proxy",
          verify_iss: true
        )

        # Validate required fields
        unless payload["sub"] && payload["aud"] && !payload["aud"].is_a?(Array)
          raise StandardError, "Invalid user token provided to verifyUserToken"
        end

        # Validate app_id if provided
        if app_id && payload["aud"] != app_id
          raise StandardError, "Invalid app id provided to verifyUserToken"
        end

        UserTokenPayload.new(
          user_id: payload["sub"],
          app_id: payload["aud"]
        )
      end
    end
  end
end
