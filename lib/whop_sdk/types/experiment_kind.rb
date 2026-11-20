# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExperimentKind
      extend Whop_sdk::Internal::Types::Enum

      BOOLEAN = "boolean"
      EXPERIMENT = "experiment"
      BEFOREAFTER = "beforeafter"
    end
  end
end
