# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class UpdateAdConversionValueRulesRequestFixedValue < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false
      end
    end
  end
end
