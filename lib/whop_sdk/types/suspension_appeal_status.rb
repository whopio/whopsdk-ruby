# frozen_string_literal: true

module Whop_sdk
  module Types
    module SuspensionAppealStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      DENIED = "denied"
    end
  end
end
