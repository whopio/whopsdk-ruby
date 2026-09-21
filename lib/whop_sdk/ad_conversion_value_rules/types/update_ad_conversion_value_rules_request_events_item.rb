# frozen_string_literal: true

module Whop_sdk
  module AdConversionValueRules
    module Types
      class UpdateAdConversionValueRulesRequestEventsItem < Internal::Types::Model
        field :custom_name, -> { String }, optional: true, nullable: false

        field :event_name, -> { Whop_sdk::AdConversionValueRules::Types::UpdateAdConversionValueRulesRequestEventsItemEventName }, optional: false, nullable: false
      end
    end
  end
end
