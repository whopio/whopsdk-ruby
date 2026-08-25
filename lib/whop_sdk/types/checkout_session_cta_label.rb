# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionCtaLabel
      extend Whop_sdk::Internal::Types::Enum

      ACCEPT_TRANSFER = "accept_transfer"
      PAY = "pay"
      CONTINUE = "continue"
      START_TRIAL = "start_trial"
      SUBSCRIBE = "subscribe"
      JOIN_WAITLIST = "join_waitlist"
    end
  end
end
