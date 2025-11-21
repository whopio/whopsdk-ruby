# frozen_string_literal: true

module WhopSDK
  module Resources
    class Refunds
      # Retrieves a Refund by ID
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the refund
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::RefundRetrieveResponse]
      #
      # @see WhopSDK::Models::RefundRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["refunds/%1$s", id],
          model: WhopSDK::Models::RefundRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists Refunds for a payment.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      #
      # @overload list(payment_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param payment_id [String] The ID of the payment to list refunds for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::RefundListResponse>]
      #
      # @see WhopSDK::Models::RefundListParams
      def list(params)
        parsed, options = WhopSDK::RefundListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "refunds",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::RefundListResponse,
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
