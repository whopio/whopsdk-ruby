# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#update
    class MembershipUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute cancel_at_period_end
      #   `true` cancels at the end of the current billing period (the customer keeps
      #   access until then); `false` reverses a pending cancellation.
      #
      #   @return [Boolean, nil]
      optional :cancel_at_period_end, WhopSDK::Internal::Type::Boolean

      # @!attribute metadata
      #   Key-value pairs to merge into the membership's metadata. Pass an empty object to
      #   clear it.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, cancel_at_period_end: nil, metadata: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param cancel_at_period_end [Boolean] `true` cancels at the end of the current billing period (the customer keeps acce
      #
      #   @param metadata [Object] Key-value pairs to merge into the membership's metadata. Pass an empty object to
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
