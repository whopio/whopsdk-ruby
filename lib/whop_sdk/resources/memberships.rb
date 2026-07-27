# frozen_string_literal: true

module WhopSDK
  module Resources
    # Memberships
    class Memberships
      # Retrieves the details of an existing membership.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the membership, or a license key.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["memberships/%1$s", id],
          model: WhopSDK::Membership,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipUpdateParams} for more details.
      #
      # Update a membership's metadata or other mutable properties.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the membership to update.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A JSON object of key-value pairs to store on the membership. Replaces any existi
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::MembershipUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["memberships/%1$s", id],
          body: parsed,
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipListParams} for more details.
      #
      # Returns a paginated list of memberships, with optional filtering by product,
      # plan, status, and user.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      #
      # @overload list(after: nil, before: nil, cancel_options: nil, cancelation_status: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, has_cancelation_reason: nil, include_text_only_cancelation_reasons: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, statuses: nil, user_ids: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param cancel_options [Array<Symbol, WhopSDK::Models::CancelOptions>, nil] Filter to only memberships matching these cancellation reasons.
      #
      # @param cancelation_status [Symbol, WhopSDK::Models::MembershipListParams::CancelationStatus, nil] The state of a membership after a customer provides a cancelation reason.
      #
      # @param company_id [String, nil] The unique identifier of the company to list memberships for. Required when usin
      #
      # @param created_after [Time, nil] Only return memberships created after this timestamp.
      #
      # @param created_before [Time, nil] Only return memberships created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param has_cancelation_reason [Boolean, nil] Filter memberships by whether they have a structured or free-text cancellation r
      #
      # @param include_text_only_cancelation_reasons [Boolean, nil] When filtering by the other cancellation option, also include memberships that o
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] Filter to only memberships belonging to these plan identifiers.
      #
      # @param product_ids [Array<String>, nil] Filter to only memberships belonging to these product identifiers.
      #
      # @param promo_code_ids [Array<String>, nil] Filter to only memberships that used these promo code identifiers.
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil] Filter to only memberships matching these statuses.
      #
      # @param user_ids [Array<String>, nil] Filter to only memberships belonging to these user identifiers.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MembershipListResponse>]
      #
      # @see WhopSDK::Models::MembershipListParams
      def list(params = {})
        parsed, options = WhopSDK::MembershipListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "memberships",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::MembershipListResponse,
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

      # Cancel a membership either immediately or at the end of the current billing
      # period. Immediate cancellation revokes access right away.
      #
      # Required permissions:
      #
      # - `membership:cancel`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload cancel(id, cancellation_mode: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the membership to cancel.
      #
      # @param cancellation_mode [Symbol, WhopSDK::Models::MembershipCancelParams::CancellationMode, nil] The mode of cancellation for a membership
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipCancelParams
      def cancel(id, params = {})
        parsed, options = WhopSDK::MembershipCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/cancel", id],
          body: parsed,
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MembershipPauseParams} for more details.
      #
      # Pause a membership's recurring payments. The customer retains access but will
      # not be charged until the membership is resumed.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload pause(id, resumes_at: nil, void_payments: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the membership to pause.
      #
      # @param resumes_at [Time, nil] When the membership should automatically resume payment collection. If not provi
      #
      # @param void_payments [Boolean, nil] Whether to void any outstanding past-due payments on this membership, preventing
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipPauseParams
      def pause(id, params = {})
        parsed, options = WhopSDK::MembershipPauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/pause", id],
          body: parsed,
          model: WhopSDK::Membership,
          options: options
        )
      end

      # Resume a previously paused membership's recurring payments. Billing resumes on
      # the next cycle.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      #
      # @overload resume(id, request_options: {})
      #
      # @param id [String] The unique identifier of the membership to resume.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Membership]
      #
      # @see WhopSDK::Models::MembershipResumeParams
      def resume(id, params = {})
        @client.request(
          method: :post,
          path: ["memberships/%1$s/resume", id],
          model: WhopSDK::Membership,
          options: params[:request_options]
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
