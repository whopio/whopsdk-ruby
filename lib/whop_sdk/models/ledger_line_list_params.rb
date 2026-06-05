# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::LedgerLines#list
    class LedgerLineListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
      #   ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      #
      #   @return [String]
      required :account_id, String

      # @!attribute after
      #   Cursor for forward pagination to fetch the next page.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Cursor for backward pagination to fetch the previous page.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute currency
      #   Filter lines by currency code (e.g. 'usd').
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute first
      #   The maximum number of ledger lines to return per page, up to 200.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute line_category
      #   Filter lines by transaction type (e.g. 'withdrawal').
      #
      #   @return [String, nil]
      optional :line_category, String, nil?: true

      # @!attribute posted_after
      #   Filter lines posted after this timestamp.
      #
      #   @return [Time, nil]
      optional :posted_after, Time, nil?: true

      # @!attribute posted_before
      #   Filter lines posted before this timestamp.
      #
      #   @return [Time, nil]
      optional :posted_before, Time, nil?: true

      # @!method initialize(account_id:, after: nil, before: nil, currency: nil, first: nil, line_category: nil, posted_after: nil, posted_before: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LedgerLineListParams} for more details.
      #
      #   @param account_id [String] The account to list ledger lines for. Accepts a user ID ('user_xxx'), company ID
      #
      #   @param after [String, nil] Cursor for forward pagination to fetch the next page.
      #
      #   @param before [String, nil] Cursor for backward pagination to fetch the previous page.
      #
      #   @param currency [String, nil] Filter lines by currency code (e.g. 'usd').
      #
      #   @param first [Integer, nil] The maximum number of ledger lines to return per page, up to 200.
      #
      #   @param line_category [String, nil] Filter lines by transaction type (e.g. 'withdrawal').
      #
      #   @param posted_after [Time, nil] Filter lines posted after this timestamp.
      #
      #   @param posted_before [Time, nil] Filter lines posted before this timestamp.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
