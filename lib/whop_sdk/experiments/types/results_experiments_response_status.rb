# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      module ResultsExperimentsResponseStatus
        extend Whop_sdk::Internal::Types::Enum

        DRAFT = "draft"
        ACTIVE = "active"
        PAUSED = "paused"
        ENDED = "ended"
      end
    end
  end
end
