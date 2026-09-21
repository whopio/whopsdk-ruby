# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdConversionValueRuleEventEventName
      extend Whop_sdk::Internal::Types::Enum

      PURCHASE = "purchase"
      SUBSCRIBE = "subscribe"
      START_TRIAL = "start_trial"
      LEAD = "lead"
      COMPLETE_REGISTRATION = "complete_registration"
      SUBMIT_APPLICATION = "submit_application"
      SCHEDULE = "schedule"
      CONTACT = "contact"
      VIEW_CONTENT = "view_content"
      ADD_TO_CART = "add_to_cart"
      CUSTOM = "custom"
    end
  end
end
