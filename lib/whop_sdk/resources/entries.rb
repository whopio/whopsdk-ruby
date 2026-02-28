# frozen_string_literal: true

module WhopSDK
  module Resources
    # Entries
    class Entries
      # Retrieves the details of an existing waitlist entry.
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the waitlist entry to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Entry]
      #
      # @see WhopSDK::Models::EntryRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["entries/%1$s", id],
          model: WhopSDK::Entry,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of waitlist entries for a company, with optional
      # filtering by product, plan, status, and creation date.
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list waitlist entries for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return entries created after this timestamp.
      #
      # @param created_before [Time, nil] Only return entries created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::EntryListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] Filter entries to only those for specific plans.
      #
      # @param product_ids [Array<String>, nil] Filter entries to only those for specific products.
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::EntryStatus>, nil] Filter entries by their current status.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::EntryListResponse>]
      #
      # @see WhopSDK::Models::EntryListParams
      def list(params)
        parsed, options = WhopSDK::EntryListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "entries",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::EntryListResponse,
          options: options
        )
      end

      # Approve a pending waitlist entry, triggering the checkout process to grant the
      # user access to the plan.
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      #
      # @overload approve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the waitlist entry to approve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::EntryApproveResponse]
      #
      # @see WhopSDK::Models::EntryApproveParams
      def approve(id, params = {})
        @client.request(
          method: :post,
          path: ["entries/%1$s/approve", id],
          model: WhopSDK::Models::EntryApproveResponse,
          options: params[:request_options]
        )
      end

      # Deny a pending waitlist entry, preventing the user from gaining access to the
      # plan.
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      # - `plan:basic:read`
      # - `member:email:read`
      #
      # @overload deny(id, request_options: {})
      #
      # @param id [String] The unique identifier of the waitlist entry to deny.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Entry]
      #
      # @see WhopSDK::Models::EntryDenyParams
      def deny(id, params = {})
        @client.request(
          method: :post,
          path: ["entries/%1$s/deny", id],
          model: WhopSDK::Entry,
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
