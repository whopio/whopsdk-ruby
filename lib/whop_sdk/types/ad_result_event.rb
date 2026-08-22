# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdResultEvent
      extend Whop_sdk::Internal::Types::Enum

      PURCHASE = "purchase"
      LEAD = "lead"
      SCHEDULE = "schedule"
      SUBMIT_APPLICATION = "submit_application"
      CONTACT = "contact"
      COMPLETE_REGISTRATION = "complete_registration"
      VIEW_CONTENT = "view_content"
      ADD_TO_CART = "add_to_cart"
      CUSTOM = "custom"
      MESSAGING_CONVERSATION = "messaging_conversation"
    end
  end
end
