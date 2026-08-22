# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      module CreateEventsRequestActionSource
        extend Whop_sdk::Internal::Types::Enum

        EMAIL = "email"
        WEBSITE = "website"
        APP = "app"
        PHONE_CALL = "phone_call"
        CHAT = "chat"
        PHYSICAL_STORE = "physical_store"
        SYSTEM_GENERATED = "system_generated"
        BUSINESS_MESSAGING = "business_messaging"
        OTHER = "other"
      end
    end
  end
end
