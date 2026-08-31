# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Membership is a customer's purchase of a plan: the subscription or one-time
    # grant that gives them access to a product. It tracks billing state (`active`,
    # `trialing`, `past_due`, and so on), the current period, pending cancellations,
    # custom metadata, and the software license key when the product includes
    # licensing.
    #
    # Use the Memberships API to list an account's memberships or the caller's own,
    # retrieve one by ID or license key, invite a recipient to join through a free
    # plan, and manage the lifecycle: cancel immediately or at period end, reverse a
    # scheduled period-end cancellation, pause and resume payment collection, extend
    # with free days, generate a transfer link, and update metadata.
    class Memberships
      # Retrieves a membership by ID or license key. Accessible to the account and to
      # the membership's own user.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Membership ID (`mem_` tag), or a software license key.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::MembershipRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["memberships/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipUpdateParams} for more details.
      #
      # Updates a membership: merge metadata key-value pairs, or toggle
      # `cancel_at_period_end` — `true` schedules the cancellation for the end of the
      # current billing period, `false` reverses a pending one.
      #
      # @overload update(id, cancel_at_period_end: nil, metadata: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: Membership ID (`mem_` tag), or a software license key.
      #
      # @param cancel_at_period_end [Boolean] Body param: `true` cancels at the end of the current billing period (the custome
      #
      # @param metadata [Object] Body param: Key-value pairs to merge into the membership's metadata. Pass an emp
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::MembershipUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["memberships/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipListParams} for more details.
      #
      # Lists every membership the caller can read: an account API key its account's; a
      # user credential their own plus those of every account they manage. `account_id`
      # and `user_id` only narrow that list — values outside the caller's reach return
      # fewer results, not an error.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_id: nil, product_id: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Narrow to one account (`biz_` tag). With read access to the account
      #
      # @param after [String] Query param: Cursor to paginate forwards from.
      #
      # @param before [String] Query param: Cursor to paginate backwards from.
      #
      # @param created_after [String] Query param: Only memberships created after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only memberships created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::MembershipListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: Number of memberships to return from the start of the window.
      #
      # @param last [Integer] Query param: Number of memberships to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::MembershipListParams::Order] Query param: Sort field.
      #
      # @param plan_id [String] Query param: Filter to memberships of this plan (`plan_` tag). Repeat as plan_id
      #
      # @param product_id [String] Query param: Filter to memberships of this product (`prod_` tag). Repeat as prod
      #
      # @param status [Symbol, WhopSDK::Models::MembershipListParams::Status] Query param: Filter by billing state. `canceling` matches active memberships set
      #
      # @param user_id [String] Query param: Narrow to one user's memberships (`user_` tag, or `me` for the call
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Membership>]
      #
      # @see WhopSDK::Models::MembershipListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :last,
            :order,
            :plan_id,
            :product_id,
            :status,
            :user_id
          ]
        parsed, options = WhopSDK::MembershipListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "memberships",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipAddFreeDaysParams} for more details.
      #
      # Add free days to extend a membership's current billing period, expiration date,
      # or Stripe trial.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload add_free_days(id, free_days:, request_options: {})
      #
      # @param id [String] The unique identifier of the membership.
      #
      # @param free_days [Integer] The number of free days to add (1-1095). Extends the billing period, expiration
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipAddFreeDaysParams
      def add_free_days(id, params)
        parsed, options = WhopSDK::MembershipAddFreeDaysParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/add_free_days", id],
          body: parsed,
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipCancelParams} for more details.
      #
      # Cancels a membership. Pass `cancel_at_period_end: true` to stop auto-renewal and
      # keep access until the current billing period ends. Omit it (or pass `false`) to
      # revoke access immediately. Buyers cannot cancel buy-now-pay-later (`splitit`,
      # `sezzle`) or non-trial split-pay memberships.
      #
      # @overload cancel(id, cancel_at_period_end: nil, reason: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] Path param: Membership ID (`mem_` tag).
      #
      # @param cancel_at_period_end [Boolean] Body param: `true` stops auto-renewal and keeps access until the current billing
      #
      # @param reason [String] Body param: Free-form note recording why the membership was canceled.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipCancelParams
      def cancel(id, params = {})
        parsed, options = WhopSDK::MembershipCancelParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: ["memberships/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipPauseParams} for more details.
      #
      # Pauses a membership's recurring payment collection. The customer keeps access
      # but is not charged until the membership is resumed.
      #
      # @overload pause(id, until_: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] Path param: Membership ID (`mem_` tag).
      #
      # @param until_ [String] Body param: ISO 8601 time to automatically resume payment collection. Must be in
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipPauseParams
      def pause(id, params = {})
        parsed, options = WhopSDK::MembershipPauseParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: ["memberships/%1$s/pause", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipResumeParams} for more details.
      #
      # Resumes a previously paused membership's recurring payment collection. Billing
      # resumes on the next cycle.
      #
      # @overload resume(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] Membership ID (`mem_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipResumeParams
      def resume(id, params = {})
        parsed, options = WhopSDK::MembershipResumeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/resume", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Reverse a pending cancellation for a membership that was scheduled to cancel at
      # period end.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload uncancel(id, request_options: {})
      #
      # @param id [String] The unique identifier of the membership to uncancel.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipUncancelParams
      def uncancel(id, params = {})
        @client.request(
          method: :post,
          path: ["memberships/%1$s/uncancel", id],
          model: WhopSDK::Membership,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
