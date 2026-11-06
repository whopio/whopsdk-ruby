# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      module CreateAutomationStepsRequestActionType
        extend Whop_sdk::Internal::Types::Enum

        WAIT = "wait"
        EMAIL = "email"
        MESSAGE = "message"
      end
    end
  end
end
