# frozen_string_literal: true

module WhopSDK
  module Resources
    class FinancialActivity
      # Lists financial activity rows for an account or user ledger. Rows are derived
      # from ledger lines and include typed resource and source objects that clients can
      # use for presentation and navigation.
      #
      # @overload list(account_id: nil, currency: nil, cursor: nil, limit: nil, line_types: nil, posted_after: nil, posted_before: nil, user_id: nil, request_options: {})
      #
      # @param account_id [String] The business account ID. Provide exactly one of account_id or user_id.
      #
      # @param currency [String] Optional currency code filter, for example usd.
      #
      # @param cursor [String] Cursor returned by the previous page.
      #
      # @param limit [Integer] Maximum number of rows to return.
      #
      # @param line_types [Array<String>] Optional ledger line categories to include.
      #
      # @param posted_after [Time] Only include rows posted after this ISO 8601 timestamp.
      #
      # @param posted_before [Time] Only include rows posted before this ISO 8601 timestamp.
      #
      # @param user_id [String] The user ID. Provide exactly one of account_id or user_id.
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
