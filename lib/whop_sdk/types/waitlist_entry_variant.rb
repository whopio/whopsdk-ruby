# frozen_string_literal: true

module Whop_sdk
  module Types
    class WaitlistEntryVariant < Internal::Types::Model
      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :billing_type, -> { Whop_sdk::Types::WaitlistEntryVariantBillingType }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :renewal_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :trial_period_days, -> { Integer }, optional: false, nullable: true
    end
  end
end
