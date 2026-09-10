# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainDNSStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      VALID = "valid"
      INVALID = "invalid"
      UNKNOWN = "unknown"
    end
  end
end
