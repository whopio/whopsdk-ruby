# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentTransactionStatuses
      extend Whop_sdk::Internal::Types::Enum

      SUCCEEDED = "succeeded"
      DECLINED = "declined"
      ERROR = "error"
      PENDING = "pending"
      CREATED = "created"
      EXPIRED = "expired"
      WON = "won"
      REJECTED = "rejected"
      LOST = "lost"
      PREVENTED = "prevented"
      CANCELED = "canceled"
    end
  end
end
