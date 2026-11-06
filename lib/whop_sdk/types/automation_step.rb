# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStep < Internal::Types::Model
      field :action_type, -> { Whop_sdk::Types::AutomationStepActionType }, optional: false, nullable: false

      field :automation_id, -> { String }, optional: false, nullable: false

      field :config, -> { Whop_sdk::Types::AutomationStepConfig }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :issues, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :key, -> { Integer }, optional: false, nullable: false

      field :previous_step_id, -> { String }, optional: false, nullable: true

      field :sender, -> { Whop_sdk::Types::AutomationStepSender }, optional: false, nullable: true

      field :source_code, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :version, -> { Integer }, optional: false, nullable: false

      field :waiting_enrollments_count, -> { Integer }, optional: false, nullable: false
    end
  end
end
