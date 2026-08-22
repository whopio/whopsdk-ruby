# frozen_string_literal: true

module Whop_sdk
  module Types
    module CardTransactionStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      COMPLETED = "completed"
      REVERSED = "reversed"
      DECLINED = "declined"
    end
  end
end
