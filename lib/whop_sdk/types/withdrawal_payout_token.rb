# frozen_string_literal: true

module Whop_sdk
  module Types
    # The saved payout destination used for this withdrawal (e.g., a bank account or PayPal address). Null if no payout
    # token was used.
    class WithdrawalPayoutToken < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :destination_currency_code, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :nickname, -> { String }, optional: false, nullable: true

      field :payer_name, -> { String }, optional: false, nullable: true
    end
  end
end
