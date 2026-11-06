# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      class UpdateAutomationStepsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :action_type, -> { Whop_sdk::AutomationSteps::Types::UpdateAutomationStepsRequestActionType }, optional: true, nullable: false

        field :config, -> { Whop_sdk::Types::AutomationStepConfig }, optional: true, nullable: false

        field :source_code, -> { String }, optional: true, nullable: false
      end
    end
  end
end
