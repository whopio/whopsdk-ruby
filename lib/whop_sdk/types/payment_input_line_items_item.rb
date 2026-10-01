# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentInputLineItemsItem < Internal::Types::Model
      field :plan_id, -> { String }, optional: false, nullable: false

      field :quantity, -> { Integer }, optional: true, nullable: false
    end
  end
end
