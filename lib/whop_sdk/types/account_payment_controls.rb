# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountPaymentControls < Internal::Types::Model
      field :dispute_alert_auto_refund, -> { Whop_sdk::Types::AccountDisputeAlertAutoRefundControl }, optional: false, nullable: false

      field :dispute_alert_fee_usd, -> { Integer }, optional: false, nullable: true

      field :enforce3ds, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "enforce_3ds"

      field :financing_disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :high_risk_processing_fee_percentage, -> { Integer }, optional: false, nullable: false

      field :pending_auto_topup_fee_percentage, -> { Integer }, optional: false, nullable: false

      field :pending_balance_delay_days, -> { Integer }, optional: false, nullable: false

      field :reserve, -> { Whop_sdk::Types::AccountReserveControl }, optional: false, nullable: false

      field :resolution_center_auto_refund, -> { Whop_sdk::Types::AccountResolutionCenterAutoRefundControl }, optional: false, nullable: false

      field :restricted_payment_methods, -> { Internal::Types::Array[Whop_sdk::Types::AccountPaymentControlsRestrictedPaymentMethodsItem] }, optional: false, nullable: false

      field :undated_pending_reason, -> { Whop_sdk::Types::AccountPaymentControlsUndatedPendingReason }, optional: false, nullable: true

      field :withdrawal_schedule, -> { Whop_sdk::Types::AccountWithdrawalScheduleControl }, optional: false, nullable: false
    end
  end
end
