# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class ListPaymentRulesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::PaymentRules::Types::ListPaymentRulesRequestStatus }, optional: true, nullable: false

        field :action, -> { Whop_sdk::PaymentRules::Types::ListPaymentRulesRequestAction }, optional: true, nullable: false

        field :order, -> { Whop_sdk::PaymentRules::Types::ListPaymentRulesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::PaymentRules::Types::ListPaymentRulesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
