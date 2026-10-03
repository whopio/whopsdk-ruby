# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      # Where physical goods ship. When present it is where tax is calculated; omit it for digital goods. Only the keys
      # you supply are kept. The payment that consumes the quote must ship to the same place, by country, state and
      # postal code, or it is refused with `quote_mismatch`.
      class CreatePaymentQuotesRequestShippingAddress < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :line1, -> { String }, optional: true, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false
      end
    end
  end
end
