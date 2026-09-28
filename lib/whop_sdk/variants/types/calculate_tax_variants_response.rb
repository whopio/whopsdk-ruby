# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class CalculateTaxVariantsResponse < Internal::Types::Model
        field :currency, -> { String }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Variants::Types::CalculateTaxVariantsResponseStatus }, optional: false, nullable: false

        field :subtotal, -> { Integer }, optional: false, nullable: false

        field :tax_amount, -> { Integer }, optional: false, nullable: false

        field :tax_behavior, -> { Whop_sdk::Variants::Types::CalculateTaxVariantsResponseTaxBehavior }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
