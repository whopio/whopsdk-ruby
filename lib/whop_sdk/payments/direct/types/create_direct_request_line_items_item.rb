# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        class CreateDirectRequestLineItemsItem < Internal::Types::Model
          field :plan_id, -> { String }, optional: false, nullable: false

          field :quantity, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
