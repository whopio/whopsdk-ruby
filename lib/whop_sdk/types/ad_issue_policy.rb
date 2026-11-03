# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdIssuePolicy
      extend Whop_sdk::Internal::Types::Enum

      MISLEADING = "misleading"
      FINANCIAL = "financial"
      HEALTH = "health"
      ADULT = "adult"
      GAMBLING = "gambling"
      SPAM = "spam"
      COPYRIGHT = "copyright"
      POLITICS = "politics"
      OTHER = "other"
    end
  end
end
