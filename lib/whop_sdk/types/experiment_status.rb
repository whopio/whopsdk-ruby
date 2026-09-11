# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExperimentStatus
      extend Whop_sdk::Internal::Types::Enum

      DRAFT = "draft"
      ACTIVE = "active"
      PAUSED = "paused"
      ENDED = "ended"
    end
  end
end
