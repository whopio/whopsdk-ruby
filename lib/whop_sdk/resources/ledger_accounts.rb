# frozen_string_literal: true

module WhopSDK
  module Resources
    class LedgerAccounts
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::LedgerAccountRetrieveParams} for more details.
      #
      # Retrieves a ledger account by its ID, company ID or user ID
      #
      # Required permissions:
      #
      # - `company:balance:read`
      # - `payout:account:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Either a User ID, Company ID, or LedgerAccount ID (user_xxx, biz_xxx, or ldgr_xx
      #
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
