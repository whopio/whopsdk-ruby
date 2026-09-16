# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class ListFieldsPaymentRulesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRuleField] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::PaymentRules::Types::ListFieldsPaymentRulesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
