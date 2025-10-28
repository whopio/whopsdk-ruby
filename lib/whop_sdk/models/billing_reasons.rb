# frozen_string_literal: true

module WhopSDK
  module Models
    # The reason why a specific payment was billed
    module BillingReasons
      extend WhopSDK::Internal::Type::Enum

      SUBSCRIPTION_CREATE = :subscription_create
      SUBSCRIPTION_CYCLE = :subscription_cycle
      SUBSCRIPTION_UPDATE = :subscription_update
      ONE_TIME = :one_time
      MANUAL = :manual
      SUBSCRIPTION = :subscription

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
