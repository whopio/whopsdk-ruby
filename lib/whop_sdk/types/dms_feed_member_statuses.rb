# frozen_string_literal: true

module Whop_sdk
  module Types
    module DmsFeedMemberStatuses
      extend Whop_sdk::Internal::Types::Enum

      REQUESTED = "requested"
      ACCEPTED = "accepted"
      HIDDEN = "hidden"
      CLOSED = "closed"
      ARCHIVED = "archived"
    end
  end
end
