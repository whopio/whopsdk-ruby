# frozen_string_literal: true

module Whop_sdk
  module Refunds
    module Types
      class ListRefundsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :payment_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Refunds::Types::ListRefundsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Refunds::Types::ListRefundsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
