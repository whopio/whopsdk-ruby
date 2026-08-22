# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of authorized team members for a company, with optional filtering by user, role, and
      # creation date.
      #
      # Required permissions:
      #  - `company:authorized_user:read`
      #  - `member:email:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Integer, nil] :first
      # @option params [Integer, nil] :last
      # @option params [String, nil] :company_id
      # @option params [String, nil] :user_id
      # @option params [Whop_sdk::Types::AuthorizedUserRoles, nil] :role
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.authorized_users.list(
      #     first: 42,
      #     last: 42,
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     user_id: "user_xxxxxxxxxxxxx",
      #     created_before: "2023-12-01T05:00:00Z",
      #     created_after: "2023-12-01T05:00:00Z"
      #   )
      #
      # @return [Whop_sdk::AuthorizedUsers::Types::ListAuthorizedUsersResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["role"] = params[:role] if params.key?(:role)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "authorized_users",
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
            parsed_response = Whop_sdk::AuthorizedUsers::Types::ListAuthorizedUsersResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Add a new authorized user to a company.
      #
      # Required permissions:
      #  - `authorized_user:create`
      #  - `member:email:read`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AuthorizedUsers::Types::CreateAuthorizedUsersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.authorized_users.create(
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     role: "owner",
      #     user_id: "user_xxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::AuthorizedUser]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "authorized_users",
          body: Whop_sdk::AuthorizedUsers::Types::CreateAuthorizedUsersRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AuthorizedUser.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the details of an existing authorized user.
      #
      # Required permissions:
      #  - `company:authorized_user:read`
      #  - `member:email:read`
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
      #   client.authorized_users.retrieve(id: "ausr_xxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::AuthorizedUser]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "authorized_users/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AuthorizedUser.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove an authorized user from a company.
      #
      # Required permissions:
      #  - `authorized_user:delete`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :company_id
      #
      # @example
      #   client.authorized_users.delete(
      #     id: "ausr_xxxxxxxxxxxxx",
      #     company_id: "biz_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Boolean]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "authorized_users/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
