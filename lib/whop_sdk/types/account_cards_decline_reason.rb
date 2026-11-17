# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountCardsDeclineReason
      extend Whop_sdk::Internal::Types::Enum

      COMPROMISED_IDENTITY = "compromised_identity"
      DUPLICATE = "duplicate"
      UNSUPPORTED_REGION = "unsupported_region"
      COMPLIANCE = "compliance"
      FRAUD = "fraud"
      VERIFICATION_FAILED = "verification_failed"
      OTHER = "other"
    end
  end
end
