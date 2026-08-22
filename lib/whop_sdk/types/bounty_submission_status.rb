# frozen_string_literal: true

module Whop_sdk
  module Types
    module BountySubmissionStatus
      extend Whop_sdk::Internal::Types::Enum

      IN_PROGRESS = "in_progress"
      SUBMITTED = "submitted"
      APPROVED = "approved"
      DENIED = "denied"
    end
  end
end
