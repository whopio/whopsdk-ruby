# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        class UpdateOverridesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :override_id, -> { String }, optional: false, nullable: false

          field :applies_to_payments, -> { Whop_sdk::Types::AffiliateAppliesToPayments }, optional: true, nullable: false

          field :commission_type, -> { Whop_sdk::Types::AffiliatePayoutTypes }, optional: true, nullable: false

          field :commission_value, -> { Integer }, optional: true, nullable: false

          field :revenue_basis, -> { Whop_sdk::Types::AffiliateRevenueBases }, optional: true, nullable: false
        end
      end
    end
  end
end
