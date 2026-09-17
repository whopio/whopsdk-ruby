# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountFeeCategory
      extend Whop_sdk::Internal::Types::Enum

      PAYMENTS = "payments"
      DISPUTES = "disputes"
      OPTIMIZATION = "optimization"
      PAYOUTS = "payouts"
      OTHER = "other"
    end
  end
end
