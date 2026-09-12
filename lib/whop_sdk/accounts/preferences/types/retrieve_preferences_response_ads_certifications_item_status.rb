# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        module RetrievePreferencesResponseAdsCertificationsItemStatus
          extend Whop_sdk::Internal::Types::Enum

          NOT_STARTED = "not_started"
          PENDING_INFORMATION = "pending_information"
          IN_REVIEW = "in_review"
          APPROVED = "approved"
          DENIED = "denied"
        end
      end
    end
  end
end
