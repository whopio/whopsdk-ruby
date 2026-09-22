# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountPartnerRewardStatus
      extend Whop_sdk::Internal::Types::Enum

      IN_PROGRESS = "in_progress"
      PROCESSING = "processing"
      CREDITED = "credited"
      REVERSING = "reversing"
      REVERSED = "reversed"
      UNAVAILABLE = "unavailable"
    end
  end
end
