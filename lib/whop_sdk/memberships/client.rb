# frozen_string_literal: true

module Whop_sdk
  module Memberships
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists every membership the caller can read: an account API key its account's; a user credential their own plus
      # those of every account they manage. `account_id` and `user_id` only narrow that list — values outside the
      # caller's reach return fewer results, not an error.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      # @option params [Whop_sdk::Memberships::Types::ListMembershipsRequestStatus, nil] :status
      # @option params [String, nil] :product_id
      # @option params [String, nil] :plan_id
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [Whop_sdk::Memberships::Types::ListMembershipsRequestOrder, nil] :order
      # @option params [Whop_sdk::Memberships::Types::ListMembershipsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.memberships.list
      #
      # @return [Whop_sdk::Memberships::Types::ListMembershipsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["product_id"] = params[:product_id] if params.key?(:product_id)
        query_params["plan_id"] = params[:plan_id] if params.key?(:plan_id)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
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
            path: "memberships",
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
            parsed_response = Whop_sdk::Memberships::Types::ListMembershipsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Sends an email inviting one recipient to join the account through a free plan. Identify the recipient by exactly
      # one of `user_id` or `email`. The invitation is bound to that recipient; after signing in, accepting it
      # immediately grants the membership without checkout. This Experimental endpoint is available only to accounts
      # enabled for membership invitations.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::InviteMembershipsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.memberships.invite(
      #     plan_id: "plan_xxxxxxxxxxxxxx",
      #     user_id: "user_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Memberships::Types::InviteMembershipsResponse]
      def invite(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/invite",
          body: Whop_sdk::Memberships::Types::InviteMembershipsRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Memberships::Types::InviteMembershipsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a membership by ID or license key. Accessible to the account and to the membership's own user.
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
      #   client.memberships.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Membership]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a membership: merge metadata key-value pairs, or toggle `cancel_at_period_end` — `true` schedules the
      # cancellation for the end of the current billing period, `false` reverses a pending one.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::UpdateMembershipsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.memberships.update(id: "id")
      #
      # @return [Whop_sdk::Types::Membership]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Memberships::Types::UpdateMembershipsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add free days to extend a membership's current billing period, expiration date, or Stripe trial.
      #
      # Required permissions:
      #  - `member:manage`
      #  - `member:email:read`
      #  - `member:basic:read`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::AddFreeDaysMembershipRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.memberships.add_free_days_membership(
      #     id: "mem_xxxxxxxxxxxxxx",
      #     free_days: 42
      #   )
      #
      # @return [Whop_sdk::Types::MembershipLegacy]
      def add_free_days_membership(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Memberships::Types::AddFreeDaysMembershipRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/add_free_days",
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
          Whop_sdk::Types::MembershipLegacy.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancels a membership. Pass `cancel_at_period_end: true` to stop auto-renewal and keep access until the current
      # billing period ends. Omit it (or pass `false`) to revoke access immediately. Buyers cannot cancel
      # buy-now-pay-later (`splitit`, `sezzle`) or non-trial split-pay memberships.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::CancelMembershipsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.memberships.cancel(id: "id")
      #
      # @return [Whop_sdk::Types::Membership]
      def cancel(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Memberships::Types::CancelMembershipsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/cancel",
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
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Adds free days to a membership, extending its current billing period, expiration date, or trial depending on the
      # plan type.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::ExtendMembershipsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.memberships.extend_(
      #     id: "id",
      #     days: 7
      #   )
      #
      # @return [Whop_sdk::Types::Membership]
      def extend_(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Memberships::Types::ExtendMembershipsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/extend",
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
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pauses a membership's recurring payment collection. The customer keeps access but is not charged until the
      # membership is resumed.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Memberships::Types::PauseMembershipsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.memberships.pause(id: "id")
      #
      # @return [Whop_sdk::Types::Membership]
      def pause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Memberships::Types::PauseMembershipsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/pause",
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
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resumes a previously paused membership's recurring payment collection. Billing resumes on the next cycle.
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
      #   client.memberships.resume(id: "id")
      #
      # @return [Whop_sdk::Types::Membership]
      def resume(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/resume",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Membership.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Re-run access fulfillment for a membership. Recomputes the member's content access on Whop, re-validates their
      # Discord link (re-adding them to the server and re-assigning roles if needed), and re-fulfills TradingView
      # indicator access. Telegram access is invite-based and cannot be resynced here. The outcome is written to the
      # membership's logs.
      #
      # Required permissions:
      #  - `membership:resync_access`
      #  - `member:email:read`
      #  - `member:basic:read`
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
      #   client.memberships.resync_access_membership(id: "mem_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::MembershipLegacy]
      def resync_access_membership(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/resync_access",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::MembershipLegacy.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a one-use transfer URL for a membership. Opening the URL while logged into a different Whop account
      # claims the membership onto that account. The membership's buyer can generate a link for their own membership
      # with `membership:transfer` when the product allows transfers and the membership is `trialing`, `active`, or
      # `completed`. An account credential with `membership:update` bypasses both restrictions.
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
      #   client.memberships.transfer(id: "id")
      #
      # @return [Whop_sdk::Memberships::Types::TransferMembershipsResponse]
      def transfer(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/transfer",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Memberships::Types::TransferMembershipsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Reverse a pending cancellation for a membership that was scheduled to cancel at period end.
      #
      # Required permissions:
      #  - `member:manage`
      #  - `member:email:read`
      #  - `member:basic:read`
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
      #   client.memberships.uncancel_membership(id: "mem_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::MembershipLegacy]
      def uncancel_membership(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "memberships/#{URI.encode_uri_component(params[:id].to_s)}/uncancel",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::MembershipLegacy.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
