# frozen_string_literal: true

module Whop_sdk
  module Types
    module ReviewStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      PUBLISHED = "published"
      REMOVED = "removed"
    end
  end
end
