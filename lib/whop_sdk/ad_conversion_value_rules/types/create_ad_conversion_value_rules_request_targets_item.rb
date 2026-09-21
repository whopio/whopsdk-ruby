# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class CreateAdConversionValueRulesRequestTargetsItem < Internal::Types::Model
        field :platform, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestTargetsItemPlatform }, optional: false, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :scope, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestTargetsItemScope }, optional: false, nullable: false
      end
    end
  end
end
