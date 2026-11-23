# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      module UpdateExperimentsRequestDecisionMode
        extend Whop_sdk::Internal::Types::Enum

        AUTOPILOT = "autopilot"
        REQUIRE_APPROVAL = "require_approval"
      end
    end
  end
end
