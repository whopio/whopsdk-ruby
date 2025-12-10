# frozen_string_literal: true

module WhopSDK
  module Resources
    class PayoutMethods
      # Lists payout destinations for a company
      #
      # Required permissions:
      #
      # - `payout:destination:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The company ID to list payout methods for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PayoutMethodListResponse>]
      #
      # @see WhopSDK::Models::PayoutMethodListParams
      def list(params)
        parsed, options = WhopSDK::PayoutMethodListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payout_methods",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PayoutMethodListResponse,
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
