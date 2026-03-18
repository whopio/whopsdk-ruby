# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # @see WhopSDK::Resources::Affiliates::Overrides#list
      class OverrideListResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the affiliate override.
        #
        #   @return [String]
        required :id, String

        # @!attribute applies_to_payments
        #   Whether the affiliate commission applies to the first payment or all payments
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToPayments, nil]
        required :applies_to_payments,
                 enum: -> {
                   WhopSDK::Affiliates::AffiliateAppliesToPayments
                 },
                 nil?: true

        # @!attribute applies_to_products
        #   Whether a rev-share override applies to a single product or all products
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToProducts, nil]
        required :applies_to_products,
                 enum: -> {
                   WhopSDK::Affiliates::AffiliateAppliesToProducts
                 },
                 nil?: true

        # @!attribute checkout_direct_link
        #   The checkout direct link for referrals (standard overrides only).
        #
        #   @return [String, nil]
        required :checkout_direct_link, String, nil?: true

        # @!attribute commission_type
        #   The type of commission (percentage or flat_fee).
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliatePayoutTypes]
        required :commission_type, enum: -> { WhopSDK::Affiliates::AffiliatePayoutTypes }

        # @!attribute commission_value
        #   The commission value (percentage 1-100 or flat fee in dollars).
        #
        #   @return [Float]
        required :commission_value, Float

        # @!attribute override_type
        #   The type of override (standard or rev_share).
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateOverrideRoles]
        required :override_type, enum: -> { WhopSDK::Affiliates::AffiliateOverrideRoles }

        # @!attribute plan_id
        #   The plan ID (for standard overrides).
        #
        #   @return [String, nil]
        required :plan_id, String, nil?: true

        # @!attribute product_direct_link
        #   The product page direct link for referrals (standard overrides only).
        #
        #   @return [String, nil]
        required :product_direct_link, String, nil?: true

        # @!attribute product_id
        #   The product ID (for rev-share overrides).
        #
        #   @return [String, nil]
        required :product_id, String, nil?: true

        # @!attribute revenue_basis
        #   The calculation method for affiliate rev-share percentages
        #
        #   @return [Symbol, WhopSDK::Models::Affiliates::AffiliateRevenueBases, nil]
        required :revenue_basis, enum: -> { WhopSDK::Affiliates::AffiliateRevenueBases }, nil?: true

        # @!attribute total_referral_earnings_usd
        #   The total earnings paid to this affiliate for referrals to this specific plan,
        #   in USD.
        #
        #   @return [Float]
        required :total_referral_earnings_usd, Float

        # @!method initialize(id:, applies_to_payments:, applies_to_products:, checkout_direct_link:, commission_type:, commission_value:, override_type:, plan_id:, product_direct_link:, product_id:, revenue_basis:, total_referral_earnings_usd:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Affiliates::OverrideListResponse} for more details.
        #
        #   An object storing information about the affiliate
        #
        #   @param id [String] The unique identifier for the affiliate override.
        #
        #   @param applies_to_payments [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToPayments, nil] Whether the affiliate commission applies to the first payment or all payments
        #
        #   @param applies_to_products [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToProducts, nil] Whether a rev-share override applies to a single product or all products
        #
        #   @param checkout_direct_link [String, nil] The checkout direct link for referrals (standard overrides only).
        #
        #   @param commission_type [Symbol, WhopSDK::Models::Affiliates::AffiliatePayoutTypes] The type of commission (percentage or flat_fee).
        #
        #   @param commission_value [Float] The commission value (percentage 1-100 or flat fee in dollars).
        #
        #   @param override_type [Symbol, WhopSDK::Models::Affiliates::AffiliateOverrideRoles] The type of override (standard or rev_share).
        #
        #   @param plan_id [String, nil] The plan ID (for standard overrides).
        #
        #   @param product_direct_link [String, nil] The product page direct link for referrals (standard overrides only).
        #
        #   @param product_id [String, nil] The product ID (for rev-share overrides).
        #
        #   @param revenue_basis [Symbol, WhopSDK::Models::Affiliates::AffiliateRevenueBases, nil] The calculation method for affiliate rev-share percentages
        #
        #   @param total_referral_earnings_usd [Float] The total earnings paid to this affiliate for referrals to this specific plan, i
      end
    end
  end
end
