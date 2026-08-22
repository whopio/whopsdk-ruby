# frozen_string_literal: true

module Whop_sdk
  module Users
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Search for users by name or username, ranked by social proximity to the authenticated user. Returns the user's
      # most recently followed users when no query is given.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :query
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.users.list
      #
      # @return [Whop_sdk::Users::Types::ListUsersResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "users",
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
            parsed_response = Whop_sdk::Users::Types::ListUsersResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves the authenticated user — the self view of the user object. Same shape as `GET /users/{id}`, with the
      # self-only fields populated: `email` (email-read scope), `staff` (Whop staff only, staff-read scope), `balance`
      # and `earnings_usd` (balance-read scope), the opt-in `balance_history`, and every linked social account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Boolean, nil] :include_balance_history
      # @option params [String, nil] :from
      # @option params [String, nil] :to
      # @option params [Whop_sdk::Users::Types::MeUsersRequestInterval, nil] :interval
      # @option params [String, nil] :time_zone
      #
      # @example
      #   client.users.me
      #
      # @return [Whop_sdk::Types::User]
      def me(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["include_balance_history"] = params[:include_balance_history] if params.key?(:include_balance_history)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["interval"] = params[:interval] if params.key?(:interval)
        query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/me",
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
          Whop_sdk::Types::User.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the authenticated user's global profile, or their profile override for an account when account_id is
      # given. Not available to API keys.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Users::Types::UpdateMeUsersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.users.update_me
      #
      # @return [Whop_sdk::Types::User]
      def update_me(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Users::Types::UpdateMeUsersRequest.new(params).to_h
        non_body_param_names = %w[account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "users/me",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::User.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a user by `user_` tag or username, or the authenticated user with the reserved id `me`. Profiles
      # include linked social accounts — reading your own profile returns every linked account, other profiles only what
      # is public on Whop (the primary Discord and the X account). The self-only fields are populated only when the id
      # is `me`: `email` (email-read scope), `staff` (Whop staff only, staff-read scope), `balance` and `earnings_usd`
      # (balance-read scope), and the opt-in `balance_history`. They are always `null` when addressing a user by tag or
      # username.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      # @option params [Boolean, nil] :include_balance_history
      # @option params [String, nil] :from
      # @option params [String, nil] :to
      # @option params [Whop_sdk::Users::Types::RetrieveUsersRequestInterval, nil] :interval
      # @option params [String, nil] :time_zone
      #
      # @example
      #   client.users.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::User]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["include_balance_history"] = params[:include_balance_history] if params.key?(:include_balance_history)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["interval"] = params[:interval] if params.key?(:interval)
        query_params["time_zone"] = params[:time_zone] if params.key?(:time_zone)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::User.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a user, addressed by `user_` tag, username, or the reserved id `me` for the authenticated user. A user
      # token updates their own global profile; an API key updates the user's account-specific profile override
      # (account_id required).
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Users::Types::UpdateUsersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.users.update(id: "id")
      #
      # @return [Whop_sdk::Types::User]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Users::Types::UpdateUsersRequest.new(params).to_h
        non_body_param_names = %w[id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "users/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::User.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Checks whether a user has access to an account, product, or experience the caller can reach.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :resource_id
      #
      # @example
      #   client.users.check_access(
      #     id: "id",
      #     resource_id: "resource_id"
      #   )
      #
      # @return [Whop_sdk::Users::Types::CheckAccessUsersResponse]
      def check_access(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/#{URI.encode_uri_component(params[:id].to_s)}/access/#{URI.encode_uri_component(params[:resource_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Users::Types::CheckAccessUsersResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the recommended actions computed for the user: personal suggestions (e.g. start a business or become an
      # affiliate) pooled with the highest-impact actions across the accounts the user owns. Business actions are tagged
      # with their `account_id`/`account_name`; personal actions leave those `null`. Self-only: `id` must be `me` or the
      # authenticated user's own tag/username.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.users.recommend_actions(id: "id")
      #
      # @return [Whop_sdk::Users::Types::RecommendActionsUsersResponse]
      def recommend_actions(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/#{URI.encode_uri_component(params[:id].to_s)}/recommend_actions",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Users::Types::RecommendActionsUsersResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Whop_sdk::OauthGrants::Client]
      def oauth_grants
        @oauth_grants ||= Whop_sdk::Users::OauthGrants::Client.new(client: @client)
      end

      # @return [Whop_sdk::Passkeys::Client]
      def passkeys
        @passkeys ||= Whop_sdk::Users::Passkeys::Client.new(client: @client)
      end

      # @return [Whop_sdk::Preferences::Client]
      def preferences
        @preferences ||= Whop_sdk::Users::Preferences::Client.new(client: @client)
      end
    end
  end
end
