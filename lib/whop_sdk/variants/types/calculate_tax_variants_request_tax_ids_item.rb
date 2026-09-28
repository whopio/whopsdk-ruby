# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class CalculateTaxVariantsRequestTaxIDsItem < Internal::Types::Model
        field :type, -> { Whop_sdk::Variants::Types::CalculateTaxVariantsRequestTaxIDsItemType }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
