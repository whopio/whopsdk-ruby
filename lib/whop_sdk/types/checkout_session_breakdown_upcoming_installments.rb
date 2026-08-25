# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownUpcomingInstallments < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :charge_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :interval_days, -> { Integer }, optional: false, nullable: false

      field :post_promo_amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :remaining, -> { Integer }, optional: false, nullable: false

      field :trial_days, -> { Integer }, optional: true, nullable: false
    end
  end
end
