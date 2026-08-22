# frozen_string_literal: true

module Whop_sdk
  module Types
    module ConversionEventZero
      extend Whop_sdk::Internal::Types::Enum

      PURCHASE = "purchase"
      ADD_TO_CART = "add_to_cart"
      INITIATED_CHECKOUT = "initiated_checkout"
      ADD_PAYMENT_INFO = "add_payment_info"
      COMPLETE_REGISTRATION = "complete_registration"
      LEAD = "lead"
      CONTENT_VIEW = "content_view"
      SEARCH = "search"
      CONTACT = "contact"
      CUSTOMIZE_PRODUCT = "customize_product"
      DONATE = "donate"
      FIND_LOCATION = "find_location"
      SCHEDULE = "schedule"
      START_TRIAL = "start_trial"
      SUBMIT_APPLICATION = "submit_application"
      SUBSCRIBE = "subscribe"
    end
  end
end
