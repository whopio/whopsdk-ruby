# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Parameters for CreatePayment
      class CreatePaymentsRequest < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Payments::Types::CreatePaymentsRequestZero }

        member -> { Whop_sdk::Payments::Types::CreatePaymentsRequestOne }

        member -> { Whop_sdk::Payments::Types::CreatePaymentsRequestTwo }

        member -> { Whop_sdk::Payments::Types::CreatePaymentsRequestThree }
      end
    end
  end
end
