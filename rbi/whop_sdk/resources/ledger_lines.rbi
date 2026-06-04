# typed: strong

module WhopSDK
  module Resources
    # Ledger lines
    class LedgerLines
      # Returns a paginated list of ledger lines for an account. Ledger lines represent
      # all transactional activity for an account, including payments, refunds,
      # disputes, transfers, and withdrawals. This is what is used to compute an account
      # balance.
      #
      # Required permissions:
      #
      # - `company:balance:read`
      sig do
        params(
          account_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          currency: T.nilable(String),
          first: T.nilable(Integer),
          line_category: T.nilable(String),
          posted_after: T.nilable(Time),
          posted_before: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::LedgerLine])
      end
      def list(
        # The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
        # ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        account_id:,
        # Cursor for forward pagination to fetch the next page.
        after: nil,
        # Cursor for backward pagination to fetch the previous page.
        before: nil,
        # Filter lines by currency code (e.g. 'usd').
        currency: nil,
        # The maximum number of ledger lines to return per page, up to 200.
        first: nil,
        # Filter lines by transaction type (e.g. 'withdrawal').
        line_category: nil,
        # Filter lines posted after this timestamp.
        posted_after: nil,
        # Filter lines posted before this timestamp.
        posted_before: nil,
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
