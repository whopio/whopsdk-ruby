# typed: strong

module WhopSDK
  module Resources
    class Transfers
      # Creates a new transfer between ledger accounts
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
        # The amount to withdraw
        amount:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the destination account which will receive the funds (either a User
        # ID, Company ID, or LedgerAccount ID)
        destination_id:,
        # The ID of the origin account which will send the funds (either a User ID,
        # Company ID, or LedgerAccount ID)
        origin_id:,
        # A unique key to ensure idempotence. Use a UUID or similar.
        idempotence_key: nil,
        # A hash of metadata to attach to the transfer.
        metadata: nil,
        # Notes for the transfer. Maximum of 50 characters.
        notes: nil,
        request_options: {}
      )
      end

      # Retrieves a transfer by ID
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
      def retrieve(id, request_options: {})
      end

      # Lists transfers
      #
      # Required permissions:
      #
      # - `payout:transfer:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
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
        # Filter transfers to only those that were sent to this destination account.
        # (user_xxx, biz_xxx, ldgr_xxx)
        destination_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter transfers to only those that were sent from this origin account.
        # (user_xxx, biz_xxx, ldgr_xxx)
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
