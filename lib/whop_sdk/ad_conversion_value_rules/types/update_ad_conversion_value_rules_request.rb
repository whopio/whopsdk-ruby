# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class UpdateAdConversionValueRulesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :adjustment_type, -> { Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestAdjustmentType }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestEventsItem] }, optional: true, nullable: false

        field :fixed_value, -> { Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestFixedValue }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :percentage_change, -> { Integer }, optional: true, nullable: false

        field :replace_rule_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :targets, -> { Internal::Types::Array[Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestTargetsItem] }, optional: true, nullable: false
      end
    end
  end
end
