# frozen_string_literal: true

module WhopSDK
  module Resources
    class Entries
      # Retrieves an entry by ID
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the entry
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

      # Lists entries for a company
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
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
      # @param order [Symbol, WhopSDK::Models::EntryListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] The plan IDs to filter the entries by
      #
      # @param product_ids [Array<String>, nil] The product IDs to filter the entries by
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::EntryStatus>, nil] The statuses to filter the entries by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::EntryListResponse>]
      #
      # @see WhopSDK::Models::EntryListParams
      def list(params)
        parsed, options = WhopSDK::EntryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "entries",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::EntryListResponse,
          options: options
        )
      end

      # Approve an entry
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      #
      # @overload approve(id, request_options: {})
      #
      # @param id [String] The ID of the entry to approve.
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

      # Deny an entry
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      # - `plan:basic:read`
      # - `member:email:read`
      #
      # @overload deny(id, request_options: {})
      #
      # @param id [String] The ID of the entry
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
