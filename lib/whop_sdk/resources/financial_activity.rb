# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::FinancialActivityListParams} for more details.
      #
      # Returns a paginated activity feed for one account or user, derived from ledger
      # lines with typed resource and source objects for presentation. Pass exactly one
      # of `account_id` (a `biz_` identifier) or `user_id` (a `user_` identifier).
      # Filter by line type, currency, posted timestamp, or settlement date to reconcile
      # a specific window. Pass `include_owned_accounts=true` with your own `user_id` to
      # aggregate your personal ledger and the businesses you own into one feed; each
      # row then carries the owning `account`.
      #
      # @overload list(account_id: nil, available_after: nil, available_before: nil, currency: nil, cursor: nil, include_owned_accounts: nil, limit: nil, line_types: nil, posted_after: nil, posted_before: nil, user_id: nil, request_options: {})
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param available_after [Date] Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
      #
      # @param available_before [Date] Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
      #
      # @param currency [String] Optional currency code filter, for example `usd`.
      #
      # @param cursor [String] Cursor returned by the previous page.
      #
      # @param include_owned_accounts [Boolean] When true, aggregates the authenticated user's personal ledger with the business
      #
      # @param limit [Integer] Maximum number of rows to return.
      #
      # @param line_types [Array<String>] Optional ledger line categories to include. Some categories (for example `onchai
      #
      # @param posted_after [Time] Only include rows posted after this ISO 8601 timestamp.
      #
      # @param posted_before [Time] Only include rows posted before this ISO 8601 timestamp.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FinancialActivityListResponse]
      #
      # @see WhopSDK::Models::FinancialActivityListParams
      def list(params = {})
        parsed, options = WhopSDK::FinancialActivityListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "financial-activity",
          query: query,
          model: WhopSDK::Models::FinancialActivityListResponse,
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
