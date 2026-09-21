# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class ListAdConversionValueRulesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AdConversionValueRule] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AdConversionValueRules::Types::ListAdConversionValueRulesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
