# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Where physical goods ship, returned on the payment as `shipping_address`. Only the keys you supply are kept;
      # omit it for digital goods.
      class CreatePaymentsRequestShippingAddress < Internal::Types::Model
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
