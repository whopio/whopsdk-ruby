# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class ListPayoutsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Payouts::Types::ListPayoutsRequestStatus }, optional: true, nullable: false

        field :source, -> { Whop_sdk::Payouts::Types::ListPayoutsRequestSource }, optional: true, nullable: false

        field :payout_method_id, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
