# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      class PreviewAutomationStepsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :member_id, -> { String }, optional: false, nullable: false

        field :trigger_resource_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
