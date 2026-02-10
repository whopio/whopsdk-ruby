# frozen_string_literal: true

module WhopSDK
  module Resources
    class Transfers
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TransferCreateParams} for more details.
      #
      # Transfer funds between two ledger accounts, such as from a company balance to a
      # user balance.
      #
      # Required permissions:
      #
      # - `payout:transfer_funds`
      #
      # @overload create(amount:, currency:, destination_id:, origin_id:, idempotence_key: nil, metadata: nil, notes: nil, request_options: {})
      #
      # @param amount [Float] The amount to transfer in the specified currency. For example, 25.00 for $25.00
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency of the transfer amount, such as 'usd'.
      #
      # @param destination_id [String] The identifier of the account receiving the funds. Accepts a user ID ('user_xxx'
      #
      # @param origin_id [String] The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
      #
      # @param idempotence_key [String, nil] A unique key to prevent duplicate transfers. Use a UUID or similar unique string
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to attach to the transfer for tracking purposes
      #
      # @param notes [String, nil] A short note describing the transfer, up to 50 characters.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Transfer]
      #
      # @see WhopSDK::Models::TransferCreateParams
      def create(params)
        parsed, options = WhopSDK::TransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "transfers",
          body: parsed,
          model: WhopSDK::Transfer,
          options: options
        )
      end

      # Retrieves the details of an existing transfer.
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the transfer to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Transfer]
      #
      # @see WhopSDK::Models::TransferRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["transfers/%1$s", id],
          model: WhopSDK::Transfer,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TransferListParams} for more details.
      #
      # Returns a paginated list of fund transfers, filtered by origin or destination
      # account, with optional sorting and date filtering.
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      #
      # @overload list(after: nil, before: nil, created_after: nil, created_before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return transfers created after this timestamp.
      #
      # @param created_before [Time, nil] Only return transfers created before this timestamp.
      #
      # @param destination_id [String, nil] Filter to transfers received by this account. Accepts a user, company, or ledger
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::TransferListParams::Order, nil] Which columns can be used to sort.
      #
      # @param origin_id [String, nil] Filter to transfers sent from this account. Accepts a user, company, or ledger a
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::TransferListResponse>]
      #
      # @see WhopSDK::Models::TransferListParams
      def list(params = {})
        parsed, options = WhopSDK::TransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "transfers",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::TransferListResponse,
          options: options
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
