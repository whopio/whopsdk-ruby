# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      PAUSED = "paused"
      IN_REVIEW = "in_review"
      REJECTED = "rejected"
    end
  end
end
