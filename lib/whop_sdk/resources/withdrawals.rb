# frozen_string_literal: true

module WhopSDK
  module Resources
    class Withdrawals
      # Retrieves a withdrawal by ID
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Withdrawal
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WithdrawalRetrieveResponse]
      #
      # @see WhopSDK::Models::WithdrawalRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["withdrawals/%1$s", id],
          model: WhopSDK::Models::WithdrawalRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists withdrawals
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list withdrawals for
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
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::WithdrawalListResponse>]
      #
      # @see WhopSDK::Models::WithdrawalListParams
      def list(params)
        parsed, options = WhopSDK::WithdrawalListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "withdrawals",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::WithdrawalListResponse,
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
