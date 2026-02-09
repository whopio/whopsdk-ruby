# frozen_string_literal: true

module WhopSDK
  module Resources
    class Transfers
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TransferCreateParams} for more details.
      #
      # Creates a new transfer between ledger accounts
      #
      # Required permissions:
      #
      # - `payout:transfer_funds`
      #
      # @overload create(amount:, currency:, destination_id:, origin_id:, idempotence_key: nil, metadata: nil, notes: nil, request_options: {})
      #
      # @param amount [Float] The amount to transfer. Provided as a number in the specified currency. Eg: 25.0
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency that is being withdrawn.
      #
      # @param destination_id [String] The ID of the destination account which will receive the funds (either a User ID
      #
      # @param origin_id [String] The ID of the origin account which will send the funds (either a User ID, Compan
      #
      # @param idempotence_key [String, nil] A unique key to ensure idempotence. Use a UUID or similar.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A hash of metadata to attach to the transfer.
      #
      # @param notes [String, nil] Notes for the transfer. Maximum of 50 characters.
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

      # Retrieves a transfer by ID
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the transfer
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
      # Lists transfers
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
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param destination_id [String, nil] Filter transfers to only those that were sent to this destination account. (user
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::TransferListParams::Order, nil] Which columns can be used to sort.
      #
      # @param origin_id [String, nil] Filter transfers to only those that were sent from this origin account. (user_xx
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
