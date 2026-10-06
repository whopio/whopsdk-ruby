# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      # The buyer's billing address. Where tax is calculated when no shipping address is given, and the address a tax
      # registration belongs to. A seller that collects tax on this purchase needs the buyer located by a `country`
      # here, on `shipping_address`, or an `ip_address`; without one the quote is refused with
      # `quote_location_required`. Only the keys you supply are kept. The payment that consumes the quote must put the
      # buyer in the same place, by country, state and postal code, through its own `shipping_address` or its
      # confirmation token's billing address, or it is refused with `quote_mismatch`.
      class CreatePaymentQuotesRequestAddress < Internal::Types::Model
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
