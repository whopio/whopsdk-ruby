# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountResolutionCenterAutoRefundControl < Internal::Types::Model
      field :card_threshold_usd, -> { Integer }, optional: false, nullable: true

      field :financing_threshold_usd, -> { Integer }, optional: false, nullable: true

      field :locked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :paypal_threshold_usd, -> { Integer }, optional: false, nullable: true
    end
  end
end
