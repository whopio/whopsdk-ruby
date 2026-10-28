# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # The buyer's billing address, returned on the payment as `billing_address` and used to calculate tax when Whop
      # calculates it for the account. Only with a `paypal` `payment_method`. Only the keys you supply are kept.
      class CreatePaymentsRequestBillingAddress < Internal::Types::Model
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
