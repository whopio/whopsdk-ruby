# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class ListMethodsResponseDataItem < Internal::Types::Model
          field :account_reference, -> { String }, optional: false, nullable: true

          field :bank_verification_state, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemBankVerificationState }, optional: false, nullable: true

          field :created_at, -> { String }, optional: false, nullable: false

          field :destination_currency, -> { String }, optional: false, nullable: false

          field :estimated_arrival, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemEstimatedArrival }, optional: false, nullable: true

          field :fee_structure, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemFeeStructure }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :institution_name, -> { String }, optional: false, nullable: true

          field :is_clone, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :is_default, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :last_paid_out_at, -> { String }, optional: false, nullable: true

          field :linked_via_plaid, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :needs_plaid_reconnect, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :nickname, -> { String }, optional: false, nullable: true

          field :object, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemObject }, optional: false, nullable: false

          field :payer_name, -> { String }, optional: false, nullable: true

          field :quote, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemQuote }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemStatus }, optional: false, nullable: false

          field :status_reason, -> { String }, optional: false, nullable: true

          field :supported_payout_method, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemSupportedPayoutMethod }, optional: false, nullable: true

          field :unavailable_reason, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItemUnavailableReason }, optional: false, nullable: true
        end
      end
    end
  end
end
