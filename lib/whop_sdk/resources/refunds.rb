# frozen_string_literal: true

module WhopSDK
  module Resources
    # Refunds
    class Refunds
      # Retrieves the details of an existing refund.
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
      # @param id [String] The unique identifier of the refund.
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

      # Returns a paginated list of refunds, with optional filtering by payment,
      # company, user, and creation date.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, payment_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] Filter refunds to only those belonging to this company.
      #
      # @param created_after [Time, nil] Only return refunds created after this timestamp.
      #
      # @param created_before [Time, nil] Only return refunds created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param payment_id [String, nil] Filter refunds to only those associated with this specific payment.
      #
      # @param user_id [String, nil] Filter refunds to only those associated with this specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::RefundListResponse>]
      #
      # @see WhopSDK::Models::RefundListParams
      def list(params = {})
        parsed, options = WhopSDK::RefundListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "refunds",
          query: query,
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
