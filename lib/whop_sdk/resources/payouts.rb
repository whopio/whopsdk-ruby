# frozen_string_literal: true

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
      # @return [WhopSDK::Resources::Payouts::Methods]
      attr_reader :methods_

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PayoutCreateParams} for more details.
      #
      # Creates a payout from a stablecoin account to a saved payout method. The
      # account's funds move from its stablecoin balance to an external bank account,
      # wallet, or crypto address. Accounts that pay out from a fiat balance use POST
      # /withdrawals. Requires the payouts API to be enabled for the account; contact
      # support to enable it. The payout settles asynchronously; poll GET /payouts for
      # the entry whose payout_request_id matches this payout's id.
      #
      # @overload create(account_id:, amount:, payout_method_id:, currency: nil, idempotency_key: nil, request_options: {})
      #
      # @param account_id [String] The account to pay out from (a biz\_ identifier).
      #
      # @param amount [Float] The amount to pay out in the specified currency.
      #
      # @param payout_method_id [String] The saved payout method to deliver to (a potk\_ identifier).
      #
      # @param currency [String] The payout currency. Defaults to usd.
      #
      # @param idempotency_key [String] A client-generated key that makes retries safe. Retrying with the same key retur
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PayoutCreateResponse]
      #
      # @see WhopSDK::Models::PayoutCreateParams
      def create(params)
        parsed, options = WhopSDK::PayoutCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payouts",
          body: parsed,
          model: WhopSDK::Models::PayoutCreateResponse,
          options: options
        )
      end

      # Lists payouts (withdrawal requests) for an account or user, most recent first.
      # Pass exactly one of account*id (a biz* identifier) or user*id (a user*
      # identifier). The saved payout method on each payout additionally requires the
      # payout:destination:read scope and is null without it.
      #
      # @overload list(account_id: nil, after: nil, before: nil, currency: nil, first: nil, last: nil, user_id: nil, request_options: {})
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param currency [String] Optional currency code filter, for example `usd`.
      #
      # @param first [Integer] Number of payouts to return from the start of the window.
      #
      # @param last [Integer] Number of payouts to return from the end of the window.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PayoutListResponse>]
      #
      # @see WhopSDK::Models::PayoutListParams
      def list(params = {})
        parsed, options = WhopSDK::PayoutListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "payouts",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PayoutListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
        @methods_ = WhopSDK::Resources::Payouts::Methods.new(client: client)
      end
    end
  end
end
