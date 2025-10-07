# frozen_string_literal: true

module Whopsdk
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::LedgerAccountRetrieveResponse]
      #
      # @see Whopsdk::Models::LedgerAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ledger_accounts/%1$s", id],
          model: Whopsdk::Models::LedgerAccountRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
