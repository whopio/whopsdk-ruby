# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class CalculateTaxPlansRequestTaxIDsItem < Internal::Types::Model
        field :type, -> { Whop_sdk::Plans::Types::CalculateTaxPlansRequestTaxIDsItemType }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
