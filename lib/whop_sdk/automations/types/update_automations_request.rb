# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      class UpdateAutomationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :secrets, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Automations::Types::UpdateAutomationsRequestStatus }, optional: true, nullable: false

        field :trigger_event, -> { Whop_sdk::Automations::Types::UpdateAutomationsRequestTriggerEvent }, optional: true, nullable: false
      end
    end
  end
end
