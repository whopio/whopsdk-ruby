# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      class TriggerAutomationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :members, -> { Whop_sdk::Automations::Types::TriggerAutomationsRequestMembers }, optional: false, nullable: false
      end
    end
  end
end
