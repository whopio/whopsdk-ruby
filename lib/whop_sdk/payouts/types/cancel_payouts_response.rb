# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class CancelPayoutsResponse < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :destination_amount, -> { String }, optional: false, nullable: true

        field :destination_currency, -> { String }, optional: false, nullable: true

        field :estimated_arrival, -> { String }, optional: false, nullable: true

        field :exchange_rate, -> { Integer }, optional: false, nullable: true

        field :failure, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseFailure }, optional: false, nullable: true

        field :fee_amount, -> { String }, optional: false, nullable: false

        field :fee_paid_by, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseFeePaidBy }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :markup_fee, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

        field :net_amount, -> { String }, optional: false, nullable: false

        field :notes, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseObject }, optional: false, nullable: false

        field :payer_name, -> { String }, optional: false, nullable: true

        field :payout_method, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponsePayoutMethod }, optional: false, nullable: true

        field :payout_request_id, -> { String }, optional: false, nullable: true

        field :source, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseSource }, optional: false, nullable: true

        field :speed, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseSpeed }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Payouts::Types::CancelPayoutsResponseStatus }, optional: false, nullable: false

        field :status_detail, -> { String }, optional: false, nullable: false

        field :trace_code, -> { String }, optional: false, nullable: true
      end
    end
  end
end
