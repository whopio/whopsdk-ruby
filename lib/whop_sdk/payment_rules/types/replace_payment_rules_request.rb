# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class ReplacePaymentRulesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :action, -> { Whop_sdk::PaymentRules::Types::ReplacePaymentRulesRequestAction }, optional: false, nullable: false

        field :conditions, -> { Whop_sdk::PaymentRules::Types::ReplacePaymentRulesRequestConditions }, optional: false, nullable: false
      end
    end
  end
end
