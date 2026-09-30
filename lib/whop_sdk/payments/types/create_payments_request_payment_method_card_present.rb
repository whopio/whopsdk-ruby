# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Present when `type` is `card_present`.
      class CreatePaymentsRequestPaymentMethodCardPresent < Internal::Types::Model
        field :platform, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodCardPresentPlatform }, optional: false, nullable: false
      end
    end
  end
end
