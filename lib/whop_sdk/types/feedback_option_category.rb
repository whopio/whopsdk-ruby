# frozen_string_literal: true

module Whop_sdk
  module Types
    module FeedbackOptionCategory
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
