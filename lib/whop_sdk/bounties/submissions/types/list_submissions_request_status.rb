# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Submissions
      module Types
        module ListSubmissionsRequestStatus
          extend Whop_sdk::Internal::Types::Enum

          SUBMITTED = "submitted"
          APPROVED = "approved"
          DENIED = "denied"
        end
      end
    end
  end
end
