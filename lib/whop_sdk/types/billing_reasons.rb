# frozen_string_literal: true

module Whop_sdk
  module Types
    module BillingReasons
      extend Whop_sdk::Internal::Types::Enum

      SUBSCRIPTION_CREATE = "subscription_create"
      SUBSCRIPTION_CYCLE = "subscription_cycle"
      SUBSCRIPTION_UPDATE = "subscription_update"
      ONE_TIME = "one_time"
      MANUAL = "manual"
      SUBSCRIPTION = "subscription"
    end
  end
end
