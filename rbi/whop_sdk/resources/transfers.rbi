# typed: strong

module WhopSDK
  module Resources
    # Transfers move value between identities on Whop. They are used for
    # account-to-account money movement, user payouts inside Whop, crypto transfers,
    # and claim links depending on the destination type.
    #
    # Use the Transfers API to create a transfer, list previous transfers, and
    # retrieve a transfer by ID when reconciling money movement between accounts or
    # users.
    class Transfers
      # Moves funds out of an account. `type` selects the kind of movement (default
      # `ledger`): `ledger` transfers credit between two ledger accounts and returns a
      # Transfer; `wallet_send` sends USDT from the origin account's Ethereum wallet to
      # a recipient; `claim_link` funds a shareable claim link anyone with the URL can
      # redeem.
      sig do
        params(
          amount: Float,
          origin_id: String,
          currency: String,
          destination_id: String,
          expires_at: T.nilable(Time),
          idempotence_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          redeemable_count: Integer,
          type: WhopSDK::TransferCreateParams::Type::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::TransferCreateResponse::Variants)
      end
      def create(
        # The amount to move, in the transfer currency. For example 25.00.
        amount:,
        # The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or
        # ledger account ID (ldgr_xxx).
        origin_id:,
        # Currency, such as `usd`. Required for ledger transfers.
        currency: nil,
        # The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
        # for sends — an email). Omit for claim_link.
        destination_id: nil,
        # claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
        # creation.
        expires_at: nil,
        # Ledger transfers only. A unique key to prevent duplicate transfers.
        idempotence_key: nil,
        # Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50
        # keys, 100 chars per key, 500 chars per string value.
        metadata: nil,
        # Ledger transfers only. A short note describing the transfer.
        notes: nil,
        # claim_link only. How many different users can claim the link. Defaults to 1.
        redeemable_count: nil,
        # The kind of money movement. Defaults to ledger.
        type: nil,
        request_options: {}
      )
      end

      # Retrieves a ledger transfer by ID.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::TransferRetrieveResponse)
      end
      def retrieve(
        # The transfer ID.
        id,
        request_options: {}
      )
      end

      # Lists ledger transfers for an account. You must specify an origin_id or a
      # destination_id.
      sig do
        params(
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          destination_id: String,
          direction: WhopSDK::TransferListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::TransferListParams::Order::OrSymbol,
          origin_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::TransferListResponse]
        )
      end
      def list(
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only transfers created strictly after this ISO 8601 timestamp.
        created_after: nil,
        # Only transfers created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # Filter to transfers received by this account.
        destination_id: nil,
        # Sort direction. Defaults to desc.
        direction: nil,
        # Number of transfers to return from the start of the window.
        first: nil,
        # Number of transfers to return from the end of the window.
        last: nil,
        # Sort column. Defaults to created_at.
        order: nil,
        # Filter to transfers sent from this account.
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
