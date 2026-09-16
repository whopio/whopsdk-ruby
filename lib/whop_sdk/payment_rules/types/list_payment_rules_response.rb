# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class ListPaymentRulesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRule] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::PaymentRules::Types::ListPaymentRulesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
