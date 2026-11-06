# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      class ListAutomationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Automations::Types::ListAutomationsRequestStatus }, optional: true, nullable: false

        field :trigger_event, -> { Whop_sdk::Automations::Types::ListAutomationsRequestTriggerEvent }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Automations::Types::ListAutomationsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Automations::Types::ListAutomationsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
