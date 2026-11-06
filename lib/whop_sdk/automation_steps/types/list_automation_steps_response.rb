# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      class ListAutomationStepsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AutomationStep] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AutomationSteps::Types::ListAutomationStepsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
