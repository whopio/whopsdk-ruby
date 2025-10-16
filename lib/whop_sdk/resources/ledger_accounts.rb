# frozen_string_literal: true

module WhopSDK
  module Resources
    class LedgerAccounts
      # Retrieves a ledger account by ID
      #
      # Required permissions:
      #
      # - `company:balance:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::LedgerAccountRetrieveResponse]
      #
      # @see WhopSDK::Models::LedgerAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ledger_accounts/%1$s", id],
          model: WhopSDK::Models::LedgerAccountRetrieveResponse,
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
