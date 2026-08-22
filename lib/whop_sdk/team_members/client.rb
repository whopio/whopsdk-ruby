# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists an account's team members, including pending invites (`status: "pending"`, `ausri_` ids; `user` is `null`
      # for invites sent to an email with no Whop account yet). For accepted members, `email` requires the
      # `company:authorized_user:email:read` scope and is `null` otherwise. Listing `role=workforce` is also allowed
      # with the `bounty:create` scope.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :account_id
      # @option params [Whop_sdk::TeamMembers::Types::ListTeamMembersRequestStatus, nil] :status
      # @option params [String, nil] :user_id
      # @option params [Whop_sdk::TeamMembers::Types::ListTeamMembersRequestRole, nil] :role
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Whop_sdk::TeamMembers::Types::ListTeamMembersRequestOrder, nil] :order
      # @option params [Whop_sdk::TeamMembers::Types::ListTeamMembersRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.team_members.list(account_id: "account_id")
      #
      # @return [Whop_sdk::TeamMembers::Types::ListTeamMembersResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["role"] = params[:role] if params.key?(:role)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
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
            path: "team_members",
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
            parsed_response = Whop_sdk::TeamMembers::Types::ListTeamMembersResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Adds a member to an account's team with a system role. Identify them by exactly one of `user_id` or `email`. If
      # the person has not yet accepted — or the email does not belong to a Whop account yet — an invitation is sent
      # instead and the response is `202` with `{ "object": "team_member_invite", "invitation_sent": true }`. If they
      # already have a pending invite, the request fails with a `400`. Custom roles cannot be granted via the API.
      # Granting the `workforce` role is also allowed with the `bounty:create` scope.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::TeamMembers::Types::CreateTeamMembersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.team_members.create(
      #     account_id: "biz_xxxxxxxxxxxxxx",
      #     role: "owner"
      #   )
      #
      # @return [Whop_sdk::Types::TeamMember]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "team_members",
          body: Whop_sdk::TeamMembers::Types::CreateTeamMembersRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::TeamMember.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a team member by ID. `email` requires the `company:authorized_user:email:read` scope and is `null`
      # otherwise.
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
      #   client.team_members.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::TeamMember]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "team_members/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::TeamMember.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes a team member from the account, or revokes a pending invite when given an `ausri_` ID. A user session
      # may delete its own membership to leave the team without the delete scope. Removing a member on the `workforce`
      # role is also allowed with the `bounty:create` scope. The account owner cannot be removed.
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
      #   client.team_members.delete(id: "id")
      #
      # @return [Whop_sdk::TeamMembers::Types::DeleteTeamMembersResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "team_members/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::TeamMembers::Types::DeleteTeamMembersResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Changes a team member's system role. Requires a user session — account API keys cannot change member roles. The
      # account owner's role cannot be changed, and you cannot change your own role.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::TeamMembers::Types::UpdateTeamMembersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.team_members.update(
      #     id: "id",
      #     role: "owner"
      #   )
      #
      # @return [Whop_sdk::Types::TeamMember]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::TeamMembers::Types::UpdateTeamMembersRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "team_members/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::TeamMember.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
