# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentLevelsRebateStatus
      extend Whop_sdk::Internal::Types::Enum

      REBATED = "rebated"
      PENDING = "pending"
      NOT_COVERED = "not_covered"
      INELIGIBLE = "ineligible"
    end
  end
end
