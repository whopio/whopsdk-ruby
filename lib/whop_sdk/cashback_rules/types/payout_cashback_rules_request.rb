# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    module Types
      class PayoutCashbackRulesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :cashback_rule_id, -> { String }, optional: true, nullable: false

        field :transaction_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
