# frozen_string_literal: true

module WhopSDK
  module Resources
    # Payout accounts
    class PayoutAccounts
      # Retrieves the details of an existing payout account.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the payout account to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PayoutAccountRetrieveResponse]
      #
      # @see WhopSDK::Models::PayoutAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["payout_accounts/%1$s", id],
          model: WhopSDK::Models::PayoutAccountRetrieveResponse,
          options: params[:request_options]
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
