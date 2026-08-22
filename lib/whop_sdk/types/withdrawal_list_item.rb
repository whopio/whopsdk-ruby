# frozen_string_literal: true

module Whop_sdk
  module Types
    # A withdrawal represents a request to transfer funds from a ledger account to an external payout method.
    class WithdrawalListItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :fee_amount, -> { Integer }, optional: false, nullable: false

      field :fee_type, -> { Whop_sdk::Types::WithdrawalFeeTypes }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :markup_fee, -> { Integer }, optional: false, nullable: false

      field :payout_request_id, -> { String }, optional: false, nullable: true

      field :speed, -> { Whop_sdk::Types::WithdrawalSpeeds }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::WithdrawalStatus }, optional: false, nullable: false
    end
  end
end
