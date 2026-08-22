# frozen_string_literal: true

module Whop_sdk
  module Types
    module PublicBountySubmissionStatus
      extend Whop_sdk::Internal::Types::Enum

      SUBMITTED = "submitted"
      APPROVED = "approved"
      DENIED = "denied"
    end
  end
end
