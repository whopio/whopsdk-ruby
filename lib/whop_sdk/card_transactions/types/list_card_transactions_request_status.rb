# frozen_string_literal: true

module Whop_sdk
  module CardTransactions
    module Types
      module ListCardTransactionsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        COMPLETED = "completed"
        REVERSED = "reversed"
        DECLINED = "declined"
      end
    end
  end
end
