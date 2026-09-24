# frozen_string_literal: true

module Whop_sdk
  module Types
    class CashbackPayout < Internal::Types::Model
      field :account_id, -> { String }, optional: true, nullable: false

      field :cashback_rule_id, -> { String }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::CashbackPayoutStatus }, optional: false, nullable: false

      field :transaction_id, -> { String }, optional: true, nullable: false
    end
  end
end
