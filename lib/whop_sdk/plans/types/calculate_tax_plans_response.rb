# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class CalculateTaxPlansResponse < Internal::Types::Model
        field :currency, -> { String }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Plans::Types::CalculateTaxPlansResponseStatus }, optional: false, nullable: false

        field :subtotal, -> { Integer }, optional: false, nullable: false

        field :tax_amount, -> { Integer }, optional: false, nullable: false

        field :tax_behavior, -> { Whop_sdk::Plans::Types::CalculateTaxPlansResponseTaxBehavior }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
