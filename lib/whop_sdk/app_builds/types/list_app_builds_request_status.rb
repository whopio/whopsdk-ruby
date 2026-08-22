# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      module ListAppBuildsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        DRAFT = "draft"
        PENDING = "pending"
        APPROVED = "approved"
        REJECTED = "rejected"
      end
    end
  end
end
