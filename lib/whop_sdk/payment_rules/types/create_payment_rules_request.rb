# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class CreatePaymentRulesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :action, -> { Whop_sdk::PaymentRules::Types::CreatePaymentRulesRequestAction }, optional: false, nullable: false

        field :conditions, -> { Whop_sdk::PaymentRules::Types::CreatePaymentRulesRequestConditions }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
