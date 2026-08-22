# frozen_string_literal: true

module Whop_sdk
  module Types
    # The shipping address provided by the customer for physical goods. Null if no shipping address was collected.
    class PaymentListItemShippingAddress < Internal::Types::Model
      field :city, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :line1, -> { String }, optional: false, nullable: true

      field :line2, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :postal_code, -> { String }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: true
    end
  end
end
