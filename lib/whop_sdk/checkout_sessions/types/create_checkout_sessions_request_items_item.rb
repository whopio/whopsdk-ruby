# frozen_string_literal: true

module Whop_sdk
  module CheckoutSessions
    module Types
      class CreateCheckoutSessionsRequestItemsItem < Internal::Types::Model
        field :plan, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
