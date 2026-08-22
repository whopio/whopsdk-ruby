# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Retrieves the authenticated user's settings document. Addressed only as `me` — the document always belongs to
        # the session user.
        #
        # @param request_options [Hash]
        # @param _params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.users.preferences.retrieve
        #
        # @return [Whop_sdk::Types::UserPreferences]
        def retrieve(request_options: {}, **_params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "users/me/preferences",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::UserPreferences.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates the authenticated user's settings document. Replaces the top-level keys it is given and leaves the
        # rest untouched.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Users::Preferences::Types::UpdatePreferencesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.users.preferences.update
        #
        # @return [Whop_sdk::Types::UserPreferences]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "users/me/preferences",
            body: Whop_sdk::Users::Preferences::Types::UpdatePreferencesRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::UserPreferences.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @return [Whop_sdk::Notifications::Client]
        def notifications
          @notifications ||= Whop_sdk::Users::Preferences::Notifications::Client.new(client: @client)
        end
      end
    end
  end
end
