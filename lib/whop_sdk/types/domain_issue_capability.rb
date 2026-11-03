# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainIssueCapability
      extend Whop_sdk::Internal::Types::Enum

      VERIFICATION = "verification"
      REGISTRATION = "registration"
      PLATFORM = "platform"
      SUBDOMAIN = "subdomain"
      WEBSITE = "website"
      APPLE_PAY = "apple_pay"
      PIXEL = "pixel"
      EMAIL = "email"
      TRANSFER = "transfer"
    end
  end
end
