# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # @see WhopSDK::Resources::Affiliates::Overrides#update
      class OverrideUpdateParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute override_id
        #
        #   @return [String]
        required :override_id, String

        # @!attribute applies_to_payments
        #   Whether the affiliate commission applies to the first payment or all payments
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToPayments, nil]
        optional :applies_to_payments,
                 enum: -> {
                   WhopSDK::Affiliates::AffiliateAppliesToPayments
                 },
                 nil?: true

        # @!attribute commission_type
        #   The types of payouts an affiliate can have
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliatePayoutTypes, nil]
        optional :commission_type, enum: -> { WhopSDK::Affiliates::AffiliatePayoutTypes }, nil?: true

        # @!attribute commission_value
        #   The commission value (percentage 1-100 or flat fee in dollars).
        #
        #   @return [Float, nil]
        optional :commission_value, Float, nil?: true

        # @!attribute revenue_basis
        #   The calculation method for affiliate rev-share percentages
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateRevenueBases, nil]
        optional :revenue_basis, enum: -> { WhopSDK::Affiliates::AffiliateRevenueBases }, nil?: true

        # @!method initialize(id:, override_id:, applies_to_payments: nil, commission_type: nil, commission_value: nil, revenue_basis: nil, request_options: {})
        #   @param id [String]
        #
        #   @param override_id [String]
        #
        #   @param applies_to_payments [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToPayments, nil] Whether the affiliate commission applies to the first payment or all payments
        #
        #   @param commission_type [Symbol, WhopSDK::Models::Affiliates::AffiliatePayoutTypes, nil] The types of payouts an affiliate can have
        #
        #   @param commission_value [Float, nil] The commission value (percentage 1-100 or flat fee in dollars).
        #
        #   @param revenue_basis [Symbol, WhopSDK::Models::Affiliates::AffiliateRevenueBases, nil] The calculation method for affiliate rev-share percentages
        #
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
