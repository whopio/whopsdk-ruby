# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationEnrollment < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :automation_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :ended_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :member_id, -> { String }, optional: false, nullable: false

      field :next_run_at, -> { String }, optional: false, nullable: true

      field :next_step_id, -> { String }, optional: false, nullable: true

      field :next_step_key, -> { Integer }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AutomationEnrollmentStatus }, optional: false, nullable: false

      field :trigger_event, -> { Whop_sdk::Types::AutomationEnrollmentTriggerEvent }, optional: false, nullable: true

      field :trigger_resource_id, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true

      field :version, -> { Integer }, optional: false, nullable: false
    end
  end
end
