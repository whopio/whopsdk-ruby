# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#pause
    class MembershipPauseParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute void_payments
      #   Whether to void past_due payments associated with the membership to prevent
      #   future payment attempts.
      #
      #   @return [Boolean, nil]
      optional :void_payments, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(void_payments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipPauseParams} for more details.
      #
      #   @param void_payments [Boolean, nil] Whether to void past_due payments associated with the membership to prevent futu
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
