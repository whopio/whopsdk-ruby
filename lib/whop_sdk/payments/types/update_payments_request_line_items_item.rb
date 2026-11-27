# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class UpdatePaymentsRequestLineItemsItem < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :variant, -> { Whop_sdk::Payments::Types::UpdatePaymentsRequestLineItemsItemVariant }, optional: true, nullable: false
      end
    end
  end
end
