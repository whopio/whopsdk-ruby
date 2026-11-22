# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # A line to add. Each product holds one added line, so a new line for the same product replaces it.
      class UpdatePaymentsRequestLineItemsItemVariant < Internal::Types::Model
        field :initial_price, -> { Integer }, optional: false, nullable: false

        field :product, -> { Whop_sdk::Payments::Types::UpdatePaymentsRequestLineItemsItemVariantProduct }, optional: false, nullable: false
      end
    end
  end
end
