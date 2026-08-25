# frozen_string_literal: true

module Whop_sdk
  module Types
    # Source of this ledger activity.
    class LedgerActivitySource < Internal::Types::Model
      field :amount_float, -> { Integer }, optional: true, nullable: false

      field :card_brand, -> { String }, optional: true, nullable: false

      field :chain, -> { String }, optional: true, nullable: false

      field :claim_url, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :estimated_arrival, -> { String }, optional: true, nullable: false

      field :from_amount, -> { String }, optional: true, nullable: false

      field :from_currency, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { String }, optional: false, nullable: false

      field :payer_name, -> { String }, optional: true, nullable: false

      field :payment_amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :payment_method_type, -> { String }, optional: true, nullable: false

      field :payment_processor, -> { String }, optional: true, nullable: false

      field :payout_destination, -> { Whop_sdk::Types::LedgerActivitySourcePayoutDestination }, optional: true, nullable: false

      field :payout_token_nickname, -> { String }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false

      field :sender_address, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :to_amount, -> { String }, optional: true, nullable: false

      field :to_currency, -> { String }, optional: true, nullable: false

      field :tx_hash, -> { String }, optional: true, nullable: false
    end
  end
end
