# frozen_string_literal: true

module Whopsdk
  module Resources
    class Transfers
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::TransferCreateParams} for more details.
      #
      # Creates a new transfer between ledger accounts
      #
      # Required permissions:
      #
      # - `payout:transfer_funds`
      #
      # @overload create(amount:, currency:, destination_id:, origin_id:, idempotence_key: nil, notes: nil, request_options: {})
      #
      # @param amount [Float] The amount to withdraw
      #
      # @param currency [Symbol, Whopsdk::Models::Currency] The currency that is being withdrawn.
      #
      # @param destination_id [String] The ID of the destination account which will receive the funds (either a User ID
      #
      # @param origin_id [String] The ID of the origin account which will send the funds (either a User ID, Compan
      #
      # @param idempotence_key [String, nil] A unique key to ensure idempotence. Use a UUID or similar.
      #
      # @param notes [String, nil] Notes for the transfer. Maximum of 50 characters.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Transfer]
      #
      # @see Whopsdk::Models::TransferCreateParams
      def create(params)
        parsed, options = Whopsdk::TransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "transfers",
          body: parsed,
          model: Whopsdk::Transfer,
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Transfer]
      #
      # @see Whopsdk::Models::TransferRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["transfers/%1$s", id],
          model: Whopsdk::Transfer,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::TransferListParams} for more details.
      #
      # Lists transfers
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      #
      # @overload list(after: nil, before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param destination_id [String, nil] Filter transfers to only those that were sent to this destination account. (user
      #
      # @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::TransferListParams::Order, nil] Which columns can be used to sort.
      #
      # @param origin_id [String, nil] Filter transfers to only those that were sent from this origin account. (user_xx
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::TransferListResponse, nil>]
      #
      # @see Whopsdk::Models::TransferListParams
      def list(params = {})
        parsed, options = Whopsdk::TransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "transfers",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::TransferListResponse,
          options: options
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
