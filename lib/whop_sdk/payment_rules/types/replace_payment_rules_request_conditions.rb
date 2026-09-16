# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      # The conditions a payment is matched against. Up to 10 conditions, and 8 KiB once serialized.
      class ReplacePaymentRulesRequestConditions < Internal::Types::Model
        field :all, -> { Internal::Types::Array[Whop_sdk::PaymentRules::Types::ReplacePaymentRulesRequestConditionsAllItem] }, optional: false, nullable: false
      end
    end
  end
end
