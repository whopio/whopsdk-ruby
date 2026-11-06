# frozen_string_literal: true

module Whop_sdk
  module Types
    module AutomationStepActionType
      extend Whop_sdk::Internal::Types::Enum

      WAIT = "wait"
      EMAIL = "email"
      MESSAGE = "message"
    end
  end
end
