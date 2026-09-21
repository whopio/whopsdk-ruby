# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class CreateAdConversionValueRulesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :adjustment_type, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestAdjustmentType }, optional: false, nullable: false

        field :events, -> { Internal::Types::Array[Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestEventsItem] }, optional: false, nullable: false

        field :fixed_value, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestFixedValue }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :percentage_change, -> { Integer }, optional: true, nullable: false

        field :replace_rule_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestStatus }, optional: true, nullable: false

        field :targets, -> { Internal::Types::Array[Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestTargetsItem] }, optional: false, nullable: false
      end
    end
  end
end
