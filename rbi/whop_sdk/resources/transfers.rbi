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
      # Moves money between accounts, or into a claim link anyone with the URL can
      # redeem.
      sig do
        params(
          amount: Float,
          origin_id: String,
          currency: String,
          destination_id: String,
          expires_at: T.nilable(Time),
          feed_id: T.nilable(String),
          feed_type:
            T.nilable(WhopSDK::TransferCreateParams::FeedType::OrSymbol),
          idempotence_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          redeemable_count: Integer,
          type: WhopSDK::TransferCreateParams::Type::OrSymbol,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::TransferCreateResponse::Variants)
      end
      def create(
        # Body param: The amount to move, in the transfer currency. For example 25.00.
        amount:,
        # Body param: The account sending the funds. A user ID (user_xxx), account ID
        # (biz_xxx), or ledger account ID (ldgr_xxx).
        origin_id:,
        # Body param: Currency, such as `usd`. Required for ledger transfers.
        currency: nil,
        # Body param: The recipient. Required for ledger and wallet*send (a
        # user*/biz*/ldgr* ID, or — for sends — an email). Omit for claim_link.
        destination_id: nil,
        # Body param: claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to
        # 24 hours from creation.
        expires_at: nil,
        # Body param: Ledger transfers only. The feed the transfer was initiated from.
        # Given with `feed_type`, the payment receipt posts into that feed instead of a
        # direct message.
        feed_id: nil,
        # Body param: Ledger transfers only. The type of the feed named by `feed_id`.
        feed_type: nil,
        # Body param: Ledger transfers and wallet sends. A unique key that makes retries
        # safe. Retrying with the same key returns the original transfer, or attaches to
        # the original wallet send, instead of moving money twice.
        idempotence_key: nil,
        # Body param: Ledger transfers only. Custom key-value pairs attached to the
        # transfer. Max 50 keys, 100 chars per key, 500 chars per string value.
        metadata: nil,
        # Body param: Ledger transfers only. A short note describing the transfer.
        notes: nil,
        # Body param: claim_link only. How many different users can claim the link.
        # Defaults to 1.
        redeemable_count: nil,
        # Body param: The kind of money movement, which decides what comes back. Defaults
        # to ledger. `ledger` moves credit between two Whop balances and returns a
        # `transfer`; `wallet_send` sends USDT from the origin account's Ethereum wallet
        # and returns a `send`; `claim_link` funds a shareable link anyone with the URL
        # can redeem and returns a `claim_link`. A `ledger` transfer from a
        # stablecoin-rails account settles on-chain when covered, and still returns a
        # `transfer`.
        type: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a single transfer.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::TransferRetrieveResponse)
      end
      def retrieve(
        # The transfer ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists an account's transfers.
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
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::TransferListResponse]
        )
      end
      def list(
        # Query param: Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Query param: Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Query param: Only transfers created strictly after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only transfers created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Filter to transfers received by this account. Provide this or
        # origin_id.
        destination_id: nil,
        # Query param: Sort direction. Defaults to desc.
        direction: nil,
        # Query param: Number of transfers to return from the start of the window.
        first: nil,
        # Query param: Number of transfers to return from the end of the window.
        last: nil,
        # Query param: Sort column. Defaults to created_at.
        order: nil,
        # Query param: Filter to transfers sent from this account. Provide this or
        # destination_id.
        origin_id: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
