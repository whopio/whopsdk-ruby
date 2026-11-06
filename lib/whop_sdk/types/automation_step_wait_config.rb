# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStepWaitConfig < Internal::Types::Model
      field :delay_seconds, -> { Integer }, optional: false, nullable: false
    end
  end
end
