# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      # The charge to a saved payment method. Null unless `payment_method_id` was passed.
      class CreateDepositsResponseCard < Internal::Types::Model
        field :payment_id, -> { String }, optional: false, nullable: false

        field :payment_method_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
