# typed: strong

module WhopSDK
  module Resources
    # Transfers
    class Transfers
      # Transfer funds between two ledger accounts, such as from a company balance to a
      # user balance.
      #
      # Required permissions:
      #
      # - `payout:transfer_funds`
      sig do
        params(
          amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          destination_id: String,
          origin_id: String,
          idempotence_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Transfer)
      end
      def create(
        # The amount to transfer in the specified currency. For example, 25.00 for $25.00
        # USD.
        amount:,
        # The currency of the transfer amount, such as 'usd'.
        currency:,
        # The identifier of the account receiving the funds. Accepts a user ID
        # ('user_xxx'), company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        destination_id:,
        # The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
        # company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        origin_id:,
        # A unique key to prevent duplicate transfers. Use a UUID or similar unique
        # string.
        idempotence_key: nil,
        # A JSON object of custom metadata to attach to the transfer for tracking
        # purposes.
        metadata: nil,
        # A short note describing the transfer, up to 50 characters.
        notes: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing transfer.
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Transfer)
      end
      def retrieve(
        # The unique identifier of the transfer to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of fund transfers, filtered by origin or destination
      # account, with optional sorting and date filtering.
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          destination_id: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::TransferListParams::Order::OrSymbol),
          origin_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::TransferListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return transfers created after this timestamp.
        created_after: nil,
        # Only return transfers created before this timestamp.
        created_before: nil,
        # Filter to transfers received by this account. Accepts a user, company, or ledger
        # account ID.
        destination_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter to transfers sent from this account. Accepts a user, company, or ledger
        # account ID.
        origin_id: nil,
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
