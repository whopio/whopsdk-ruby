# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class PostWithdrawalCreatedPayloadData < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :destination_amount, -> { String }, optional: false, nullable: true

        field :destination_currency, -> { String }, optional: false, nullable: true

        field :estimated_arrival, -> { String }, optional: false, nullable: true

        field :exchange_rate, -> { Integer }, optional: false, nullable: true

        field :failure, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataFailure }, optional: false, nullable: true

        field :fee_amount, -> { String }, optional: false, nullable: false

        field :fee_paid_by, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataFeePaidBy }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :markup_fee, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

        field :net_amount, -> { String }, optional: false, nullable: false

        field :notes, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataObject }, optional: false, nullable: false

        field :payer_name, -> { String }, optional: false, nullable: true

        field :payout_method, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataPayoutMethod }, optional: false, nullable: true

        field :payout_request_id, -> { String }, optional: false, nullable: true

        field :source, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataSource }, optional: false, nullable: true

        field :speed, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataSpeed }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Payouts::Types::PostWithdrawalCreatedPayloadDataStatus }, optional: false, nullable: false

        field :status_detail, -> { String }, optional: false, nullable: false

        field :trace_code, -> { String }, optional: false, nullable: true
      end
    end
  end
end
