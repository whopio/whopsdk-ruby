# typed: strong

module WhopSDK
  module Resources
    class Payouts
      # Payouts represent money sent from an account or user balance to an external
      # destination, such as a bank account, wallet, or other saved payout method.
      #
      # Use the Payouts API to create payouts from stablecoin accounts, list payout
      # history for accounts or users, monitor payout statuses, and show expected
      # arrival details for funds leaving Whop.
      class Methods
        # Lists the saved payout methods (bank accounts, digital wallets, crypto
        # addresses) that an account or user can withdraw to, most recently added first.
        # Pass exactly one of account*id (a biz* identifier) or user*id (a user*
        # identifier). Pass an amount to additionally get a fee and delivery quote per
        # method for withdrawing that amount.
        sig do
          params(
            account_id: String,
            after: String,
            amount: Float,
            before: String,
            currency: String,
            first: Integer,
            include_available: T::Boolean,
            last: Integer,
            status: WhopSDK::Payouts::MethodListParams::Status::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(
            WhopSDK::Internal::CursorPage[
              WhopSDK::Models::Payouts::MethodListResponse
            ]
          )
        end
        def list(
          # The owning account ID (a biz\_ identifier). Provide this or user_id.
          account_id: nil,
          # Cursor to fetch the page after (from page_info.end_cursor).
          after: nil,
          # Optional withdrawal amount in whole currency units, for example `250.00`. When
          # provided, each method includes a quote with the estimated fee, amount received,
          # and delivery date for that amount.
          amount: nil,
          # Cursor to fetch the page before (from page_info.start_cursor).
          before: nil,
          # Currency code of the amount, for example `usd`. Only meaningful with amount.
          currency: nil,
          # Number of payout methods to return from the start of the window. Capped at 25
          # when an amount is provided.
          first: nil,
          # When true, the response also carries available_destinations — payout rails the
          # account could add as a new payout method, with per-currency quotes when an
          # amount is provided.
          include_available: nil,
          # Number of payout methods to return from the end of the window.
          last: nil,
          # Optional status filter. `created` means saved but unused, `active` means a
          # payout through it succeeded, `broken` means the last payout failed and the
          # method needs fixing.
          status: nil,
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
end
