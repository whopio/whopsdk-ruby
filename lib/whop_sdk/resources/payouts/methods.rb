# frozen_string_literal: true

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
        # Some parameter documentations has been truncated, see
        # {WhopSDK::Models::Payouts::MethodListParams} for more details.
        #
        # Lists the saved payout methods (bank accounts, digital wallets, crypto
        # addresses) that an account or user can withdraw to, most recently added first.
        # Pass exactly one of account*id (a biz* identifier) or user*id (a user*
        # identifier). Pass an amount to additionally get a fee and delivery quote per
        # method for withdrawing that amount.
        #
        # @overload list(account_id: nil, after: nil, amount: nil, before: nil, currency: nil, first: nil, include_available: nil, last: nil, status: nil, user_id: nil, request_options: {})
        #
        # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
        #
        # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
        #
        # @param amount [Float] Optional withdrawal amount in whole currency units, for example `250.00`. When p
        #
        # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
        #
        # @param currency [String] Currency code of the amount, for example `usd`. Only meaningful with amount.
        #
        # @param first [Integer] Number of payout methods to return from the start of the window. Capped at 25 wh
        #
        # @param include_available [Boolean] When true, the response also carries available_destinations — payout rails the a
        #
        # @param last [Integer] Number of payout methods to return from the end of the window.
        #
        # @param status [Symbol, WhopSDK::Models::Payouts::MethodListParams::Status] Optional status filter. `created` means saved but unused, `active` means a payou
        #
        # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Payouts::MethodListResponse>]
        #
        # @see WhopSDK::Models::Payouts::MethodListParams
        def list(params = {})
          parsed, options = WhopSDK::Payouts::MethodListParams.dump_request(params)
          query = WhopSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "payouts/methods",
            query: query,
            page: WhopSDK::Internal::CursorPage,
            model: WhopSDK::Models::Payouts::MethodListResponse,
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
end
