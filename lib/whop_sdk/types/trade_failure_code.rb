# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeFailureCode
      extend Whop_sdk::Internal::Types::Enum

      PRE_SUBMISSION_ERROR = "pre_submission_error"
      PROVIDER_REJECTED = "provider_rejected"
      PROVIDER_OUTCOME_UNKNOWN = "provider_outcome_unknown"
    end
  end
end
