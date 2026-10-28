# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      class CreatePaymentQuotesRequestLineItemsItem < Internal::Types::Model
        field :quantity, -> { Integer }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
