# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdConversionValueRule < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :adjustment_type, -> { Whop_sdk::Types::AdConversionValueRuleAdjustmentType }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :events, -> { Internal::Types::Array[Whop_sdk::Types::AdConversionValueRuleEvent] }, optional: false, nullable: false

      field :fixed_value, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :percentage_change, -> { Integer }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AdConversionValueRuleStatus }, optional: false, nullable: false

      field :targets, -> { Internal::Types::Array[Whop_sdk::Types::AdConversionValueRuleTarget] }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
