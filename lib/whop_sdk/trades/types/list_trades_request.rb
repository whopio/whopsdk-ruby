# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class ListTradesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Trades::Types::ListTradesRequestStatus }, optional: true, nullable: false

        field :operation_type, -> { Whop_sdk::Trades::Types::ListTradesRequestOperationType }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Trades::Types::ListTradesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Trades::Types::ListTradesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
