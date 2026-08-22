# frozen_string_literal: true

module Whop_sdk
  module Users
    module OauthGrants
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists the authenticated user's own OAuth grants — one per app they have authorized, per account they
        # authorized it for. The list is always the caller's own; there is no parameter for reading another user's
        # grants. Requires a user session: an API key or an OAuth token is refused, so an app can never enumerate the
        # other apps a user has authorized.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :app_id
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        # @option params [Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestOrder, nil] :order
        # @option params [Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestDirection, nil] :direction
        #
        # @example
        #   client.users.oauth_grants.list
        #
        # @return [Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["app_id"] = params[:app_id] if params.key?(:app_id)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["before"] = params[:before] if params.key?(:before)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "users/me/oauth_grants",
              query: query_params,
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise Whop_sdk::Errors::TimeoutError
            end
            code = response.code.to_i
            if code.between?(200, 299)
              parsed_response = Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Completes the OAuth authorization step for the authenticated user: records their consent for the scopes an app
        # asked for and mints the authorization code to hand back to it. Returns the grant, plus a `redirect_url`
        # carrying that code — the one and only time it is returned. Exchange the code at `POST /oauth/token` with the
        # verifier for `code_challenge`. Requires a user session, because consent has to come from the account holder:
        # an API key or an OAuth token is refused, so an app can never authorize itself. Send an `Idempotency-Key` to
        # make a retry safe — a replay returns the original `redirect_url` and its code rather than issuing a second
        # one.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.users.oauth_grants.create(
        #     client_id: "app_xxxxxxxxxxxxxx",
        #     code_challenge: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        #     code_challenge_method: "S256",
        #     redirect_uri: "https://Booking.Shinetime.example:8443/oauth/Callback/",
        #     requested_scopes: ["profile"]
        #   )
        #
        # @return [Whop_sdk::Types::OauthGrant]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "users/me/oauth_grants",
            body: Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::OauthGrant.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
