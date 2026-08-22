# frozen_string_literal: true

module Whop_sdk
  module Types
    module CancelOptions
      extend Whop_sdk::Internal::Types::Enum

      TOO_EXPENSIVE = "too_expensive"
      SWITCHING = "switching"
      MISSING_FEATURES = "missing_features"
      TECHNICAL_ISSUES = "technical_issues"
      BAD_EXPERIENCE = "bad_experience"
      OTHER = "other"
      TESTING = "testing"
    end
  end
end
