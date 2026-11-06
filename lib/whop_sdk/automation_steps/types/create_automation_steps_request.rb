# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      class CreateAutomationStepsRequest < Internal::Types::Model
        field :action_type, -> { Whop_sdk::AutomationSteps::Types::CreateAutomationStepsRequestActionType }, optional: false, nullable: false

        field :automation_id, -> { String }, optional: false, nullable: false

        field :config, -> { Whop_sdk::Types::AutomationStepConfig }, optional: true, nullable: false

        field :previous_step_id, -> { String }, optional: true, nullable: false

        field :source_code, -> { String }, optional: true, nullable: false
      end
    end
  end
end
