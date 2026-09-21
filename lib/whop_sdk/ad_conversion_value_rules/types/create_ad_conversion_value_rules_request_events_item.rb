# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class CreateAdConversionValueRulesRequestEventsItem < Internal::Types::Model
        field :custom_name, -> { String }, optional: true, nullable: false

        field :event_name, -> { Whop_sdk::AdConversionValueRules::Types::CreateAdConversionValueRulesRequestEventsItemEventName }, optional: false, nullable: false
      end
    end
  end
end
