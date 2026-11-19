# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExternalMessageEmailStatus
      extend Whop_sdk::Internal::Types::Enum

      RECEIVED = "received"
      SPAM = "spam"
      VIRUS = "virus"
      QUEUED = "queued"
      SENT = "sent"
      DELIVERED = "delivered"
      BOUNCED = "bounced"
      COMPLAINED = "complained"
      FAILED = "failed"
      REFUSED_UNSUBSCRIBED = "refused_unsubscribed"
      REFUSED_RATE_LIMITED = "refused_rate_limited"
      REFUSED_SPAM = "refused_spam"
      DELAYED = "delayed"
    end
  end
end
