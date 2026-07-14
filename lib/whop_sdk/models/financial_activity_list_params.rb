# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::FinancialActivity#list
    class FinancialActivityListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute available_after
      #   Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
      #   settlement date (UTC), distinct from posted_at. Requires currency.
      #
      #   @return [Date, nil]
      optional :available_after, Date

      # @!attribute available_before
      #   Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
      #   settlement date (UTC). Set equal to available_after for a single day. Requires
      #   currency.
      #
      #   @return [Date, nil]
      optional :available_before, Date

      # @!attribute currency
      #   Optional currency code filter, for example `usd`.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute cursor
      #   Cursor returned by the previous page.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute include_owned_accounts
      #   When true, aggregates the authenticated user's personal ledger with the
      #   businesses they own (owner role with balance read) into one feed. Requires
      #   user_id to be the authenticated user; cannot be combined with account_id or the
      #   settlement-date filters. Each returned row includes the owning `account`.
      #
      #   @return [Boolean, nil]
      optional :include_owned_accounts, WhopSDK::Internal::Type::Boolean

      # @!attribute limit
      #   Maximum number of rows to return.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute line_types
      #   Optional ledger line categories to include. Some categories (for example
      #   `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps)
      #   are only returned when explicitly requested here.
      #
      #   @return [Array<String>, nil]
      optional :line_types, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute posted_after
      #   Only include rows posted after this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :posted_after, Time

      # @!attribute posted_before
      #   Only include rows posted before this ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :posted_before, Time

      # @!attribute user_id
      #   The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(account_id: nil, available_after: nil, available_before: nil, currency: nil, cursor: nil, include_owned_accounts: nil, limit: nil, line_types: nil, posted_after: nil, posted_before: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FinancialActivityListParams} for more details.
      #
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param available_after [Date] Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD`
      #
      #   @param available_before [Date] Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD`
      #
      #   @param currency [String] Optional currency code filter, for example `usd`.
      #
      #   @param cursor [String] Cursor returned by the previous page.
      #
      #   @param include_owned_accounts [Boolean] When true, aggregates the authenticated user's personal ledger with the business
      #
      #   @param limit [Integer] Maximum number of rows to return.
      #
      #   @param line_types [Array<String>] Optional ledger line categories to include. Some categories (for example `onchai
      #
      #   @param posted_after [Time] Only include rows posted after this ISO 8601 timestamp.
      #
      #   @param posted_before [Time] Only include rows posted before this ISO 8601 timestamp.
      #
      #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
