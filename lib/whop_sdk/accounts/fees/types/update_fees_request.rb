# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        class UpdateFeesRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :ads, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestAds }, optional: true, nullable: false

          field :bank_deposit, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestBankDeposit }, optional: true, nullable: false

          field :billing, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestBilling }, optional: true, nullable: false

          field :buyer, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestBuyer }, optional: true, nullable: false

          field :card_processing, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestCardProcessing }, optional: true, nullable: false

          field :child_markups, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkups }, optional: true, nullable: false

          field :cross_border, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestCrossBorder }, optional: true, nullable: false

          field :dispute, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDispute }, optional: true, nullable: false

          field :dispute_alert, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeAlert }, optional: true, nullable: false

          field :dispute_alert_cdrn, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeAlertCdrn }, optional: true, nullable: false

          field :dispute_alert_ethoca, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeAlertEthoca }, optional: true, nullable: false

          field :dispute_alert_rdr, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeAlertRdr }, optional: true, nullable: false

          field :dispute_representment, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestDisputeRepresentment }, optional: true, nullable: false

          field :foreign_exchange, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestForeignExchange }, optional: true, nullable: false

          field :fraud_screening, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestFraudScreening }, optional: true, nullable: false

          field :high_risk, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestHighRisk }, optional: true, nullable: false

          field :marketplace, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarketplace }, optional: true, nullable: false

          field :markups, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkups }, optional: true, nullable: false

          field :notes, -> { String }, optional: true, nullable: false

          field :orchestration, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestOrchestration }, optional: true, nullable: false

          field :payment_methods, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestPaymentMethodsValue] }, optional: true, nullable: false

          field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestPayoutsValue] }, optional: true, nullable: false

          field :pending_auto_topup, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestPendingAutoTopup }, optional: true, nullable: false

          field :platform_processing, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestPlatformProcessing }, optional: true, nullable: false

          field :pool_payout, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestPoolPayout }, optional: true, nullable: false

          field :revshare, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestRevshare }, optional: true, nullable: false

          field :tax_calculation, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestTaxCalculation }, optional: true, nullable: false

          field :tax_service, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestTaxService }, optional: true, nullable: false

          field :three_ds, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestThreeDs }, optional: true, nullable: false

          field :transfers, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestTransfers }, optional: true, nullable: false
        end
      end
    end
  end
end
