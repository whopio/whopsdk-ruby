# typed: strong

module WhopSDK
  module Resources
    # Payouts represent money sent from an account or user balance to an external
    # destination, such as a bank account, wallet, or other saved payout method.
    #
    # Use the Payouts API to create payouts from stablecoin accounts, list payout
    # history for accounts or users, monitor payout statuses, and show expected
    # arrival details for funds leaving Whop.
    class Payouts
      # Payouts represent money sent from an account or user balance to an external
      # destination, such as a bank account, wallet, or other saved payout method.
      #
      # Use the Payouts API to create payouts from stablecoin accounts, list payout
      # history for accounts or users, monitor payout statuses, and show expected
      # arrival details for funds leaving Whop.
      sig { returns(WhopSDK::Resources::Payouts::Methods) }
      attr_reader :methods_

      # Creates a payout from a stablecoin account to a saved payout method. The
      # account's funds move from its stablecoin balance to an external bank account,
      # wallet, or crypto address. Accounts that pay out from a fiat balance use POST
      # /withdrawals. Requires the payouts API to be enabled for the account; contact
      # support to enable it. The payout settles asynchronously; poll GET /payouts for
      # the entry whose payout_request_id matches this payout's id.
      sig do
        params(
          account_id: String,
          amount: Float,
          payout_method_id: String,
          currency: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PayoutCreateResponse)
      end
      def create(
        # The account to pay out from (a biz\_ identifier).
        account_id:,
        # The amount to pay out in the specified currency.
        amount:,
        # The saved payout method to deliver to (a potk\_ identifier).
        payout_method_id:,
        # The payout currency. Defaults to usd.
        currency: nil,
        # A client-generated key that makes retries safe. Retrying with the same key
        # returns the original payout instead of creating a second one.
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Lists payouts (withdrawal requests) for an account or user, most recent first.
      # Pass exactly one of account*id (a biz* identifier) or user*id (a user*
      # identifier). The saved payout method on each payout additionally requires the
      # payout:destination:read scope and is null without it.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          currency: String,
          first: Integer,
          last: Integer,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PayoutListResponse]
        )
      end
      def list(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Optional currency code filter, for example `usd`.
        currency: nil,
        # Number of payouts to return from the start of the window.
        first: nil,
        # Number of payouts to return from the end of the window.
        last: nil,
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
