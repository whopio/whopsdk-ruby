# frozen_string_literal: true

module WhopSDK
  module Resources
    # Resolution center cases
    class ResolutionCenterCases
      # Retrieves the details of an existing resolution center case.
      #
      # Required permissions:
      #
      # - `payment:resolution_center_case:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the resolution center case.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ResolutionCenterCaseRetrieveResponse]
      #
      # @see WhopSDK::Models::ResolutionCenterCaseRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["resolution_center_cases/%1$s", id],
          model: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of resolution center cases, with optional filtering by
      # company, status, and creation date.
      #
      # Required permissions:
      #
      # - `payment:resolution_center_case:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, statuses: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to list resolution center cases for.
      #
      # @param created_after [Time, nil] Only return cases created after this timestamp.
      #
      # @param created_before [Time, nil] Only return cases created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseStatus>, nil] Filter by resolution center case status.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ResolutionCenterCaseListResponse>]
      #
      # @see WhopSDK::Models::ResolutionCenterCaseListParams
      def list(params = {})
        parsed, options = WhopSDK::ResolutionCenterCaseListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "resolution_center_cases",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ResolutionCenterCaseListResponse,
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
