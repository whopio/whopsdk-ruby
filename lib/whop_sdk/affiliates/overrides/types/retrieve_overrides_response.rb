# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        # A commission configuration for an affiliate, defining payout terms for a specific plan or revenue share
        class RetrieveOverridesResponse < Internal::Types::Model
          field :applies_to_payments, -> { Whop_sdk::Types::AffiliateAppliesToPayments }, optional: false, nullable: true

          field :applies_to_products, -> { Whop_sdk::Types::AffiliateAppliesToProducts }, optional: false, nullable: true

          field :checkout_direct_link, -> { String }, optional: false, nullable: true

          field :commission_type, -> { Whop_sdk::Types::AffiliatePayoutTypes }, optional: false, nullable: false

          field :commission_value, -> { Integer }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :override_type, -> { Whop_sdk::Types::AffiliateOverrideRoles }, optional: false, nullable: false

          field :plan_id, -> { String }, optional: false, nullable: true

          field :product_direct_link, -> { String }, optional: false, nullable: true

          field :product_id, -> { String }, optional: false, nullable: true

          field :revenue_basis, -> { Whop_sdk::Types::AffiliateRevenueBases }, optional: false, nullable: true

          field :total_referral_earnings_usd, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
