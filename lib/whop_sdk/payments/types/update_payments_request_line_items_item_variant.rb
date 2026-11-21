# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # A one-time line to add. A payment carries one added line per product, so a line for a product that already has
      # one replaces it.
      class UpdatePaymentsRequestLineItemsItemVariant < Internal::Types::Model
        field :initial_price, -> { Integer }, optional: false, nullable: false

        field :product, -> { Whop_sdk::Payments::Types::UpdatePaymentsRequestLineItemsItemVariantProduct }, optional: false, nullable: false
      end
    end
  end
end
