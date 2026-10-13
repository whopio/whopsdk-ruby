# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        module RetrievePreferencesResponseFeedbackOptionsItemCategory
          extend Whop_sdk::Internal::Types::Enum

          TOO_EXPENSIVE = "too_expensive"
          SWITCHING = "switching"
          MISSING_FEATURES = "missing_features"
          TECHNICAL_ISSUES = "technical_issues"
          BAD_EXPERIENCE = "bad_experience"
          UNUSED = "unused"
          OTHER = "other"
        end
      end
    end
  end
end
