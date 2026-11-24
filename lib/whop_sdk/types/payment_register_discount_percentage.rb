# frozen_string_literal: true

module Whop_sdk
  module Types
    # Takes a percentage off.
    class PaymentRegisterDiscountPercentage < Internal::Types::Model
      field :percentage, -> { Integer }, optional: false, nullable: false
    end
  end
end
