# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeAlertType
      extend Whop_sdk::Internal::Types::Enum

      EARLY_FRAUD_WARNING = "early_fraud_warning"
      DISPUTE_ALERT = "dispute_alert"
      RAPID_DISPUTE_RESOLUTION = "rapid_dispute_resolution"
    end
  end
end
