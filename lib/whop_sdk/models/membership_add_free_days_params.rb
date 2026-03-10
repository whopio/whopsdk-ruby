# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#add_free_days
    class MembershipAddFreeDaysParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute free_days
      #   The number of free days to add (1-1095). Extends the billing period, expiration
      #   date, or Stripe trial depending on plan type.
      #
      #   @return [Integer]
      required :free_days, Integer

      # @!method initialize(id:, free_days:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipAddFreeDaysParams} for more details.
      #
      #   @param id [String]
      #
      #   @param free_days [Integer] The number of free days to add (1-1095). Extends the billing period, expiration
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
