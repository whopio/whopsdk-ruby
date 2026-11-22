# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Product for the line, matched by `external_identifier`. Created hidden if it doesn't exist. An existing product
      # must be hidden.
      class UpdatePaymentsRequestLineItemsItemVariantProduct < Internal::Types::Model
        field :external_identifier, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
