# frozen_string_literal: true

module Whop_sdk
  module Types
    module PlanListItemThreeDsLevel
      extend Whop_sdk::Internal::Types::Enum

      MANDATE_CHALLENGE = "mandate_challenge"
      MANDATE_IF_REQUIRED = "mandate_if_required"
      FRICTIONLESS_IF_REQUIRED = "frictionless_if_required"
    end
  end
end
