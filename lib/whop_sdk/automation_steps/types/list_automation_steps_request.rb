# frozen_string_literal: true

module Whop_sdk
  module AutomationSteps
    module Types
      class ListAutomationStepsRequest < Internal::Types::Model
        field :automation_id, -> { String }, optional: true, nullable: false

        field :version, -> { Integer }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AutomationSteps::Types::ListAutomationStepsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AutomationSteps::Types::ListAutomationStepsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
