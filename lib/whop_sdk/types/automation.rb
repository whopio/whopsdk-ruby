# frozen_string_literal: true

module Whop_sdk
  module Types
    class Automation < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :active_enrollments_count, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :created_by_actor, -> { Whop_sdk::Types::AutomationActor }, optional: false, nullable: false

      field :draft_version, -> { Integer }, optional: false, nullable: false

      field :has_unpublished_changes, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :published_at, -> { String }, optional: false, nullable: true

      field :published_by_actor, -> { Whop_sdk::Types::AutomationActor }, optional: false, nullable: true

      field :published_version, -> { Integer }, optional: false, nullable: true

      field :secret_names, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AutomationStatus }, optional: false, nullable: false

      field :total_enrollments_count, -> { Integer }, optional: false, nullable: false

      field :trigger_event, -> { Whop_sdk::Types::AutomationTriggerEvent }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
