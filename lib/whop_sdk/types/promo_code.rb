# frozen_string_literal: true

module Whop_sdk
  module Types
    class PromoCode < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: false

      field :amount_off, -> { Integer }, optional: false, nullable: false

      field :churned_users_only, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :code, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::PromoCodeCurrency }, optional: false, nullable: false

      field :duration, -> { Whop_sdk::Types::PromoCodeDuration }, optional: false, nullable: false

      field :existing_memberships_only, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :new_users_only, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :one_per_customer, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :product, -> { Whop_sdk::Types::PromoCodeProduct }, optional: false, nullable: true

      field :promo_duration_months, -> { Integer }, optional: false, nullable: true

      field :promo_type, -> { Whop_sdk::Types::PromoCodePromoType }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PromoCodeStatus }, optional: false, nullable: false

      field :stock, -> { Integer }, optional: false, nullable: false

      field :unlimited_stock, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :uses, -> { Integer }, optional: false, nullable: false
    end
  end
end
