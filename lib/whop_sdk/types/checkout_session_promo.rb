# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionPromo < Internal::Types::Model
      field :amount_off, -> { Integer }, optional: false, nullable: false

      field :code, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::CheckoutSessionPromoCurrency }, optional: false, nullable: true

      field :duration, -> { Whop_sdk::Types::CheckoutSessionPromoDuration }, optional: false, nullable: false

      field :number_of_intervals, -> { Integer }, optional: false, nullable: true

      field :promo_type, -> { Whop_sdk::Types::CheckoutSessionPromoPromoType }, optional: false, nullable: false
    end
  end
end
