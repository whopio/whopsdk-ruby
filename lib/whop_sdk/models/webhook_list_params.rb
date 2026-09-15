# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#list
    class WebhookListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The unique identifier of the account to list webhooks for.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute after
      #   Return results after this cursor. Use `page_info.end_cursor` from the previous
      #   response to fetch the next page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute app_id
      #   Only return webhooks attached to this app. Omit to list the account's own
      #   webhooks.
      #
      #   @return [String, nil]
      optional :app_id, String

      # @!attribute before
      #   Return results before this cursor. Use `page_info.start_cursor` from the
      #   previous response to fetch the previous page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   Number of results to return from the start of the range.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute has_failures
      #   Only return webhooks whose endpoint is currently failing — every delivery since
      #   the current failure streak began has been rejected. Clears as soon as a delivery
      #   succeeds.
      #
      #   @return [Boolean, nil]
      optional :has_failures, WhopSDK::Internal::Type::Boolean

      # @!attribute include_app_webhooks
      #   Also return webhooks attached to the account's apps, not just the account's own.
      #   Cannot be combined with `app_id`.
      #
      #   @return [Boolean, nil]
      optional :include_app_webhooks, WhopSDK::Internal::Type::Boolean

      # @!attribute last
      #   Number of results to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id:, after: nil, app_id: nil, before: nil, first: nil, has_failures: nil, include_app_webhooks: nil, last: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookListParams} for more details.
      #
      #   @param account_id [String] The unique identifier of the account to list webhooks for.
      #
      #   @param after [String] Return results after this cursor. Use `page_info.end_cursor` from the previous r
      #
      #   @param app_id [String] Only return webhooks attached to this app. Omit to list the account's own webhoo
      #
      #   @param before [String] Return results before this cursor. Use `page_info.start_cursor` from the previou
      #
      #   @param first [Integer] Number of results to return from the start of the range.
      #
      #   @param has_failures [Boolean] Only return webhooks whose endpoint is currently failing — every delivery since
      #
      #   @param include_app_webhooks [Boolean] Also return webhooks attached to the account's apps, not just the account's own.
      #
      #   @param last [Integer] Number of results to return from the end of the range.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
