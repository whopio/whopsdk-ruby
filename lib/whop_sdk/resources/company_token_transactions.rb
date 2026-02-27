# frozen_string_literal: true

module WhopSDK
  module Resources
    class CompanyTokenTransactions
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CompanyTokenTransactionCreateParams} for more details.
      #
      # Create a token transaction to add, subtract, or transfer tokens for a member
      # within a company.
      #
      # Required permissions:
      #
      # - `company_token_transaction:create`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload create(amount:, company_id:, destination_user_id:, user_id:, description: nil, idempotency_key: nil, transaction_type: :subtract, request_options: {})
      #
      # @param amount [Float] The positive number of tokens to transact. For example, 100.0 for 100 tokens.
      #
      # @param company_id [String] The unique identifier of the company to create the transaction in, starting with
      #
      # @param destination_user_id [String] The unique identifier of the user receiving the tokens. Required when the transa
      #
      # @param user_id [String] The unique identifier of the user whose token balance will be affected, starting
      #
      # @param description [String, nil] A human-readable description of why the transaction was created.
      #
      # @param idempotency_key [String, nil] A unique key to prevent duplicate transactions. Use a UUID or similar unique str
      #
      # @param transaction_type [Symbol, :subtract]
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CompanyTokenTransaction]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionCreateParams
      def create(params)
        parsed, options = WhopSDK::CompanyTokenTransactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "company_token_transactions",
          body: parsed,
          model: WhopSDK::CompanyTokenTransaction,
          options: options
        )
      end

      # Retrieves the details of an existing company token transaction.
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the token transaction to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CompanyTokenTransaction]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["company_token_transactions/%1$s", id],
          model: WhopSDK::CompanyTokenTransaction,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of token transactions for a user or company, depending
      # on the authenticated actor, with optional filtering by user and transaction
      # type.
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, transaction_type: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list token transactions for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param transaction_type [Symbol, WhopSDK::Models::CompanyTokenTransactionType, nil] The type of token transaction
      #
      # @param user_id [String, nil] Filter transactions to only those involving this specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CompanyTokenTransactionListResponse>]
      #
      # @see WhopSDK::Models::CompanyTokenTransactionListParams
      def list(params)
        parsed, options = WhopSDK::CompanyTokenTransactionListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "company_token_transactions",
          query: query,
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
