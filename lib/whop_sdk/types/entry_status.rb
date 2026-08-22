# frozen_string_literal: true

module Whop_sdk
  module Types
    module EntryStatus
      extend Whop_sdk::Internal::Types::Enum

      DRAFTED = "drafted"
      PENDING = "pending"
      APPROVED = "approved"
      DENIED = "denied"
      ANY = "any"
    end
  end
end
