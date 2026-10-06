# frozen_string_literal: true

module Whop_sdk
  module Types
    class MembershipAffiliate < Internal::Types::Model
      field :applies_to_payments, -> { Whop_sdk::Types::MembershipAffiliateAppliesToPayments }, optional: false, nullable: false

      field :commission_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :commission_percentage, -> { Integer }, optional: false, nullable: true

      field :commission_type, -> { Whop_sdk::Types::MembershipAffiliateCommissionType }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
