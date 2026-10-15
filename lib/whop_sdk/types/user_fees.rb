# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserFees < Internal::Types::Model
      field :bank_deposit, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFee] }, optional: false, nullable: false

      field :pending_auto_topup, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :transfers, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
