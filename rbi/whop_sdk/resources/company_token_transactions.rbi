# typed: strong

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
      sig do
        params(
          amount: Float,
          company_id: String,
          destination_user_id: String,
          user_id: String,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          transaction_type: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CompanyTokenTransaction)
      end
      def create(
        # The positive amount of tokens
        amount:,
        # The company ID
        company_id:,
        # Required for transfers - the user to receive tokens
        destination_user_id:,
        # The user ID whose balance will change
        user_id:,
        # Optional description for the transaction
        description: nil,
        # Optional key to prevent duplicate transactions
        idempotency_key: nil,
        transaction_type: :subtract,
        request_options: {}
      )
      end

      # Retrieves a token transaction by ID
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CompanyTokenTransaction)
      end
      def retrieve(
        # The ID of the transaction
        id,
        request_options: {}
      )
      end

      # Lists token transactions for a company
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          transaction_type:
            T.nilable(WhopSDK::BotTokenTransactionTypes::OrSymbol),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CompanyTokenTransactionListResponse
          ]
        )
      end
      def list(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The type of token transaction
        transaction_type: nil,
        # Filter by user ID
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
