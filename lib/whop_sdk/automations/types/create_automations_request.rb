# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      class CreateAutomationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :trigger_event, -> { Whop_sdk::Automations::Types::CreateAutomationsRequestTriggerEvent }, optional: true, nullable: false
      end
    end
  end
end
