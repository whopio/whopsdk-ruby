# frozen_string_literal: true

module WhopSDK
  module Resources
    class Memberships
      # Retrieves a membership by ID or license key
      #
      # Required permissions:
      #
      # - `member:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the membership or a license key
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

      # Update a membership
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      #
      # @overload update(id, metadata: nil, request_options: {})
      #
      # @param id [String] The ID of the membership.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] The metadata to update the membership with.
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

      # Lists memberships
      #
      # Required permissions:
      #
      # - `member:basic:read`
      #
      # @overload list(after: nil, before: nil, cancel_options: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, statuses: nil, user_ids: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param cancel_options [Array<Symbol, WhopSDK::Models::MembershipListParams::CancelOption>, nil] The cancel options to filter the memberships by
      #
      # @param company_id [String, nil] The ID of the company to list memberships for
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] The plan IDs to filter the memberships by
      #
      # @param product_ids [Array<String>, nil] The product IDs to filter the memberships by
      #
      # @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the memberships by
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil] The membership status to filter the memberships by
      #
      # @param user_ids [Array<String>, nil] Only return memberships from these whop user ids
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MembershipListResponse>]
      #
      # @see WhopSDK::Models::MembershipListParams
      def list(params = {})
        parsed, options = WhopSDK::MembershipListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "memberships",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::MembershipListResponse,
          options: options
        )
      end

      # Cancels a membership either immediately or at the end of the current billing
      # period
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      #
      # @overload cancel(id, cancellation_mode: nil, request_options: {})
      #
      # @param id [String] The ID of the membership.
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
      # Pauses a membership's payments
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      #
      # @overload pause(id, void_payments: nil, request_options: {})
      #
      # @param id [String] The ID of the membership you want to pause.
      #
      # @param void_payments [Boolean, nil] Whether to void past_due payments associated with the membership to prevent futu
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

      # Resumes a membership's payments
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      #
      # @overload resume(id, request_options: {})
      #
      # @param id [String] The ID of the membership you want to resume.
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
