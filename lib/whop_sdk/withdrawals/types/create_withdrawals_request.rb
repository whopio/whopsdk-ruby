# frozen_string_literal: true

module Whop_sdk
  module Withdrawals
    module Types
      class CreateWithdrawalsRequest < Internal::Types::Model
        field :acknowledge_bank_warning, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :amount, -> { Integer }, optional: false, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false

        field :payout_method_id, -> { String }, optional: true, nullable: false

        field :platform_covers_fees, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :speed, -> { Whop_sdk::Types::WithdrawalSpeeds }, optional: true, nullable: false

        field :statement_descriptor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
