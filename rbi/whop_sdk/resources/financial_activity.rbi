# typed: strong

module WhopSDK
  module Resources
    # A Ledger Activity row is a single financial event on an account's ledger — a
    # payment, withdrawal, refund, transfer, on-chain deposit, swap, or card
    # transaction. Each row is derived from the underlying ledger lines and carries a
    # typed `resource` and `source` so you can present and link the event without
    # extra lookups.
    #
    # Use Ledger Activity to build a statement or transaction feed for an account or
    # user. Reconcile against your own records with `amount` (signed, in the
    # currency's smallest precision units) and `posted_at`, and use `available_at` to
    # know when inflows became withdrawable.
    class FinancialActivity
      # Returns a paginated activity feed for one account or user, derived from ledger
      # lines with typed resource and source objects for presentation. Pass exactly one
      # of `account_id` (a `biz_` identifier) or `user_id` (a `user_` identifier).
      # Filter by line type, currency, posted timestamp, or settlement date to reconcile
      # a specific window. Pass `include_owned_accounts=true` with your own `user_id` to
      # aggregate your personal ledger and the businesses you own into one feed; each
      # row then carries the owning `account`.
      sig do
        params(
          account_id: String,
          available_after: Date,
          available_before: Date,
          currency: String,
          cursor: String,
          include_owned_accounts: T::Boolean,
          limit: Integer,
          line_types: T::Array[String],
          posted_after: Time,
          posted_before: Time,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FinancialActivityListResponse)
      end
      def list(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
        # settlement date (UTC), distinct from posted_at. Requires currency.
        available_after: nil,
        # Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
        # settlement date (UTC). Set equal to available_after for a single day. Requires
        # currency.
        available_before: nil,
        # Optional currency code filter, for example `usd`.
        currency: nil,
        # Cursor returned by the previous page.
        cursor: nil,
        # When true, aggregates the authenticated user's personal ledger with the
        # businesses they own (owner role with balance read) into one feed. Requires
        # user_id to be the authenticated user; cannot be combined with account_id or the
        # settlement-date filters. Each returned row includes the owning `account`.
        include_owned_accounts: nil,
        # Maximum number of rows to return.
        limit: nil,
        # Optional ledger line categories to include. Some categories (for example
        # `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps)
        # are only returned when explicitly requested here.
        line_types: nil,
        # Only include rows posted after this ISO 8601 timestamp.
        posted_after: nil,
        # Only include rows posted before this ISO 8601 timestamp.
        posted_before: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
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
