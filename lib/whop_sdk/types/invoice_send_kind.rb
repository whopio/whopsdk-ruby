# frozen_string_literal: true

module Whop_sdk
  module Types
    module InvoiceSendKind
      extend Whop_sdk::Internal::Types::Enum

      SEND = "send"
      RESEND = "resend"
      SCHEDULED_SEND = "scheduled_send"
      REMINDER = "reminder"
      PAYMENT_FOLLOW_UP = "payment_follow_up"
    end
  end
end
