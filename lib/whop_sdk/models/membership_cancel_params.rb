# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#cancel
    class MembershipCancelParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute cancel_at_period_end
      #   `true` stops auto-renewal and keeps access until the current billing period
      #   ends. Omit or `false` revokes access immediately.
      #
      #   @return [Boolean, nil]
      optional :cancel_at_period_end, WhopSDK::Internal::Type::Boolean

      # @!attribute reason
      #   Free-form note recording why the membership was canceled.
      #
      #   @return [String, nil]
      optional :reason, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(id:, cancel_at_period_end: nil, reason: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipCancelParams} for more details.
      #
      #   @param id [String]
      #
      #   @param cancel_at_period_end [Boolean] `true` stops auto-renewal and keeps access until the current billing period ends
      #
      #   @param reason [String] Free-form note recording why the membership was canceled.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
