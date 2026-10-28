# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        class CreateDirectRequestLineItemsItem < Internal::Types::Model
          field :quantity, -> { Integer }, optional: true, nullable: false

          field :variant_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
