# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class UpdateAdConversionValueRulesRequestTargetsItem < Internal::Types::Model
        field :resource_id, -> { String }, optional: true, nullable: false

        field :scope, -> { Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestTargetsItemScope }, optional: false, nullable: false
      end
    end
  end
end
