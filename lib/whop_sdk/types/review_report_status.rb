# frozen_string_literal: true

module Whop_sdk
  module Types
    module ReviewReportStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      ACCEPTED = "accepted"
      REJECTED = "rejected"
    end
  end
end
