# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainIssueCapability
      extend Whop_sdk::Internal::Types::Enum

      VERIFICATION = "verification"
      REGISTRATION = "registration"
      PLATFORM = "platform"
      WEBSITE = "website"
      APPLE_PAY = "apple_pay"
    end
  end
end
