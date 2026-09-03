# frozen_string_literal: true

module Whop_sdk
  module Types
    # The promo code used for this payment.
    class PaymentLegacyPromoCode < Internal::Types::Model
      field :amount_off, -> { Integer }, optional: false, nullable: false

      field :base_currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :code, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :number_of_intervals, -> { Integer }, optional: false, nullable: true

      field :promo_type, -> { Whop_sdk::Types::PromoTypes }, optional: false, nullable: false
    end
  end
end
