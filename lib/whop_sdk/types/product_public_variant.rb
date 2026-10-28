# frozen_string_literal: true

module Whop_sdk
  module Types
    class ProductPublicVariant < Internal::Types::Model
      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :billing_type, -> { Whop_sdk::Types::ProductPublicVariantBillingType }, optional: false, nullable: false

      field :expiration_days, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :renewal_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :unlimited_stock, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :visibility, -> { Whop_sdk::Types::ProductPublicVariantVisibility }, optional: false, nullable: false
    end
  end
end
