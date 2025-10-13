# frozen_string_literal: true

module Whopsdk
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Membership]
      #
      # @see Whopsdk::Models::MembershipRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["memberships/%1$s", id],
          model: Whopsdk::Membership,
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
      # @param id [String]
      #
      # @param metadata [Hash{Symbol=>Object}, nil] The metadata to update the membership with.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Membership]
      #
      # @see Whopsdk::Models::MembershipUpdateParams
      def update(id, params = {})
        parsed, options = Whopsdk::MembershipUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["memberships/%1$s", id],
          body: parsed,
          model: Whopsdk::Membership,
          options: options
        )
      end

      # Lists memberships
      #
      # Required permissions:
      #
      # - `member:basic:read`
      #
      # @overload list(company_id:, access_pass_ids: nil, after: nil, before: nil, cancel_options: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, promo_code_ids: nil, statuses: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list memberships for
      #
      # @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the memberships by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param cancel_options [Array<Symbol, Whopsdk::Models::MembershipListParams::CancelOption>, nil] The cancel options to filter the memberships by
      #
      # @param created_after [Integer, nil] The minimum creation date to filter by
      #
      # @param created_before [Integer, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] The plan IDs to filter the memberships by
      #
      # @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the memberships by
      #
      # @param statuses [Array<Symbol, Whopsdk::Models::MembershipStatus>, nil] The membership status to filter the memberships by
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::MembershipListResponse>]
      #
      # @see Whopsdk::Models::MembershipListParams
      def list(params)
        parsed, options = Whopsdk::MembershipListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "memberships",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::MembershipListResponse,
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
      # @param id [String]
      #
      # @param cancellation_mode [Symbol, Whopsdk::Models::MembershipCancelParams::CancellationMode, nil] The mode of cancellation for a membership
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Membership]
      #
      # @see Whopsdk::Models::MembershipCancelParams
      def cancel(id, params = {})
        parsed, options = Whopsdk::MembershipCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/cancel", id],
          body: parsed,
          model: Whopsdk::Membership,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::MembershipPauseParams} for more details.
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
      # @param id [String]
      #
      # @param void_payments [Boolean, nil] Whether to void past_due payments associated with the membership to prevent futu
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Membership]
      #
      # @see Whopsdk::Models::MembershipPauseParams
      def pause(id, params = {})
        parsed, options = Whopsdk::MembershipPauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["memberships/%1$s/pause", id],
          body: parsed,
          model: Whopsdk::Membership,
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Membership]
      #
      # @see Whopsdk::Models::MembershipResumeParams
      def resume(id, params = {})
        @client.request(
          method: :post,
          path: ["memberships/%1$s/resume", id],
          model: Whopsdk::Membership,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
