# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ledger lines
    class LedgerLines
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::LedgerLineListParams} for more details.
      #
      # Returns a paginated list of ledger lines for an account. Ledger lines represent
      # all transactional activity for an account, including payments, refunds,
      # disputes, transfers, and withdrawals. This is what is used to compute an account
      # balance.
      #
      # Required permissions:
      #
      # - `company:balance:read`
      #
      # @overload list(account_id:, after: nil, before: nil, currency: nil, first: nil, line_category: nil, posted_after: nil, posted_before: nil, request_options: {})
      #
      # @param account_id [String] The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
      #
      # @param after [String, nil] Cursor for forward pagination to fetch the next page.
      #
      # @param before [String, nil] Cursor for backward pagination to fetch the previous page.
      #
      # @param currency [String, nil] Filter lines by currency code (e.g. 'usd').
      #
      # @param first [Integer, nil] The maximum number of ledger lines to return per page, up to 200.
      #
      # @param line_category [String, nil] Filter lines by transaction type (e.g. 'withdrawal').
      #
      # @param posted_after [Time, nil] Filter lines posted after this timestamp.
      #
      # @param posted_before [Time, nil] Filter lines posted before this timestamp.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::LedgerLine>]
      #
      # @see WhopSDK::Models::LedgerLineListParams
      def list(params)
        parsed, options = WhopSDK::LedgerLineListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ledger_lines",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::LedgerLine,
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
