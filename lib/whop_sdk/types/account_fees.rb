# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFees < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :bank_deposit, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :billing, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :buyer, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :card_processing, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :child_markups, -> { Whop_sdk::Types::AccountFeeMarkups }, optional: false, nullable: true

      field :covered_payout_fees, -> { Whop_sdk::Types::AccountCoveredPayoutFees }, optional: false, nullable: false

      field :cross_border, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute_alert, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute_alert_cdrn, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute_alert_ethoca, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute_alert_rdr, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :dispute_representment, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :foreign_exchange, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :fraud_screening, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :high_risk, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :marketplace, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :markups, -> { Whop_sdk::Types::AccountFeeMarkups }, optional: false, nullable: true

      field :orchestration, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :parent_account_id, -> { String }, optional: false, nullable: true

      field :payment_methods, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFee] }, optional: false, nullable: false

      field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFee] }, optional: false, nullable: false

      field :pending_auto_topup, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :platform_processing, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :pool_payout, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :revshare, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :tax_calculation, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :tax_service, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :three_ds, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false

      field :transfers, -> { Whop_sdk::Types::AccountFee }, optional: false, nullable: false
    end
  end
end
