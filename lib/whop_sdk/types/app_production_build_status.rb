# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppProductionBuildStatus
      extend Whop_sdk::Internal::Types::Enum

      DRAFT = "draft"
      PENDING = "pending"
      APPROVED = "approved"
      REJECTED = "rejected"
    end
  end
end
