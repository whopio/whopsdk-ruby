# frozen_string_literal: true

module Whop_sdk
  module Types
    module Statuses
      extend Whop_sdk::Internal::Types::Enum

      PUBLISHED = "published"
      ARCHIVED = "archived"
      SCHEDULED = "scheduled"
    end
  end
end
