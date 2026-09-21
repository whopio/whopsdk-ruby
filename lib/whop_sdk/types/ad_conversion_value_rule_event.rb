# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdConversionValueRuleEvent < Internal::Types::Model
      field :custom_name, -> { String }, optional: false, nullable: true

      field :event_name, -> { Whop_sdk::Types::AdConversionValueRuleEventEventName }, optional: false, nullable: false
    end
  end
end
