# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountDisputeAlertAutoRefundControl < Internal::Types::Model
      field :locked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :threshold_usd, -> { Integer }, optional: false, nullable: true
    end
  end
end
