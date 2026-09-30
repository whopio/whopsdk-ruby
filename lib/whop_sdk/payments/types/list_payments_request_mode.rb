# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      module ListPaymentsRequestMode
        extend Whop_sdk::Internal::Types::Enum

        ACCOUNT_SALES = "account_sales"
        USER_SALES = "user_sales"
      end
    end
  end
end
