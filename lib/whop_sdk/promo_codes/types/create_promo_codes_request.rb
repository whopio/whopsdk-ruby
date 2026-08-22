# frozen_string_literal: true

module Whop_sdk
  module PromoCodes
    module Types
      class CreatePromoCodesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount_off, -> { Integer }, optional: false, nullable: false

        field :base_currency, -> { Whop_sdk::PromoCodes::Types::CreatePromoCodesRequestBaseCurrency }, optional: false, nullable: false

        field :churned_users_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :code, -> { String }, optional: false, nullable: false

        field :existing_memberships_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :new_users_only, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :one_per_customer, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :plan_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :promo_duration_months, -> { Integer }, optional: false, nullable: false

        field :promo_type, -> { Whop_sdk::PromoCodes::Types::CreatePromoCodesRequestPromoType }, optional: false, nullable: false

        field :stock, -> { Integer }, optional: true, nullable: false

        field :unlimited_stock, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
