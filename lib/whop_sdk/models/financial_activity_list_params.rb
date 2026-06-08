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

      # @!attribute currency
      #   Optional currency code filter, for example usd.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute cursor
      #   Cursor returned by the previous page.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Maximum number of rows to return.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute line_types
      #   Optional ledger line categories to include.
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

      # @!method initialize(account_id: nil, currency: nil, cursor: nil, limit: nil, line_types: nil, posted_after: nil, posted_before: nil, user_id: nil, request_options: {})
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param currency [String] Optional currency code filter, for example usd.
      #
      #   @param cursor [String] Cursor returned by the previous page.
      #
      #   @param limit [Integer] Maximum number of rows to return.
      #
      #   @param line_types [Array<String>] Optional ledger line categories to include.
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
