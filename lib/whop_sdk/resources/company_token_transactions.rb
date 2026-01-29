# frozen_string_literal: true

module WhopSDK
  module Resources
    class CompanyTokenTransactions
      # Create a token transaction (add/subtract/transfer) for a member
      #
      # Required permissions:
      #
      # - `company_token_transaction:create`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload create(amount:, company_id:, destination_user_id:, user_id:, description: nil, idempotency_key: nil, transaction_type: :subtract, request_options: {})
      #
      # @param amount [Float] The positive amount of tokens
      #
      # @param company_id [String] The company ID
      #
      # @param destination_user_id [String] Required for transfers - the user to receive tokens
      #
      # @param user_id [String] The user ID whose balance will change
      #
      # @param description [String, nil] Optional description for the transaction
      #
      # @param idempotency_key [String, nil] Optional key to prevent duplicate transactions
      #
      # @param transaction_type [Symbol, :subtract]
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CompanyTokenTransactionCreateResponse]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionCreateParams
      def create(params)
        parsed, options = WhopSDK::CompanyTokenTransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "company_token_transactions",
          body: parsed,
          model: WhopSDK::Models::CompanyTokenTransactionCreateResponse,
          options: options
        )
      end

      # Retrieves a token transaction by ID
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the transaction
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CompanyTokenTransactionRetrieveResponse]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["company_token_transactions/%1$s", id],
          model: WhopSDK::Models::CompanyTokenTransactionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists token transactions for a company
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, transaction_type: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param transaction_type [Symbol, WhopSDK::Models::CompanyTokenTransactionListParams::TransactionType, nil] The type of token transaction
      #
      # @param user_id [String, nil] Filter by user ID
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CompanyTokenTransactionListResponse>]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionListParams
      def list(params)
        parsed, options = WhopSDK::CompanyTokenTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "company_token_transactions",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CompanyTokenTransactionListResponse,
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
