# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payouts#list
    class PayoutListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute currency
      #   Optional currency code filter, for example `usd`.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute first
      #   Number of payouts to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Number of payouts to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute user_id
      #   The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(account_id: nil, after: nil, before: nil, currency: nil, first: nil, last: nil, user_id: nil, request_options: {})
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param currency [String] Optional currency code filter, for example `usd`.
      #
      #   @param first [Integer] Number of payouts to return from the start of the window.
      #
      #   @param last [Integer] Number of payouts to return from the end of the window.
      #
      #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
