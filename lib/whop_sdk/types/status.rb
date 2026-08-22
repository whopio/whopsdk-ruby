# frozen_string_literal: true

module Whop_sdk
  module Types
    module Status
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      ARCHIVED = "archived"
      DELETED = "deleted"
    end
  end
end
