# frozen_string_literal: true

module WhopSDK
  module Resources
    class PaymentTokens
      # Retrieves a PaymentToken by ID
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload retrieve(id, member_id:, request_options: {})
      #
      # @param id [String] The ID of the PaymentToken
      #
      # @param member_id [String] The ID of the Member associated with the PaymentToken
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PaymentTokenRetrieveResponse]
      #
      # @see WhopSDK::Models::PaymentTokenRetrieveParams
      def retrieve(id, params)
        parsed, options = WhopSDK::PaymentTokenRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["payment_tokens/%1$s", id],
          query: parsed,
          model: WhopSDK::Models::PaymentTokenRetrieveResponse,
          options: options
        )
      end

      # Lists PaymentTokens
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      #
      # @overload list(member_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param member_id [String] The ID of the Member to list payment tokens for
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
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentTokenListResponse>]
      #
      # @see WhopSDK::Models::PaymentTokenListParams
      def list(params)
        parsed, options = WhopSDK::PaymentTokenListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payment_tokens",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PaymentTokenListResponse,
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
