# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExperimentDecisionMode
      extend Whop_sdk::Internal::Types::Enum

      AUTOPILOT = "autopilot"
      REQUIRE_APPROVAL = "require_approval"
    end
  end
end
