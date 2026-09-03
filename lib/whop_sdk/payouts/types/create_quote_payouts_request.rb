# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class CreateQuotePayoutsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :payout_method_id, -> { String }, optional: false, nullable: false

        field :platform_covers_fees, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :speed, -> { Whop_sdk::Payouts::Types::CreateQuotePayoutsRequestSpeed }, optional: true, nullable: false

        field :statement_descriptor, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
