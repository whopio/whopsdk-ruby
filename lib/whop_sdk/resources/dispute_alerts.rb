# frozen_string_literal: true

module WhopSDK
  module Resources
    # Dispute alerts
    class DisputeAlerts
      # Retrieves the details of an existing dispute alert.
      #
      # Required permissions:
      #
      # - `payment:dispute_alert:read`
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `payment:dispute:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the dispute alert.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DisputeAlertRetrieveResponse]
      #
      # @see WhopSDK::Models::DisputeAlertRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dispute_alerts/%1$s", id],
          model: WhopSDK::Models::DisputeAlertRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of dispute alerts for a company, with optional
      # filtering by creation date.
      #
      # Required permissions:
      #
      # - `payment:dispute_alert:read`
      # - `payment:basic:read`
      # - `payment:dispute:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list dispute alerts for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return dispute alerts created after this timestamp.
      #
      # @param created_before [Time, nil] Only return dispute alerts created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::DisputeAlertListResponse>]
      #
      # @see WhopSDK::Models::DisputeAlertListParams
      def list(params)
        parsed, options = WhopSDK::DisputeAlertListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "dispute_alerts",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DisputeAlertListResponse,
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
