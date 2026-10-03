# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      # The buyer's billing address. Where tax is calculated when no shipping address is given, and the address a tax
      # registration belongs to. A seller that collects tax on this purchase needs the buyer located: provide a
      # `country` here, on `shipping_address`, or an `ip_address`. Only the keys you supply are kept.
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
