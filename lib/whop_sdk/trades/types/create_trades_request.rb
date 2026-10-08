# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CreateTradesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount, -> { String }, optional: true, nullable: false

        field :leverage, -> { Integer }, optional: true, nullable: false

        field :market, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Trades::Types::CreateTradesRequestType }, optional: false, nullable: false
      end
    end
  end
end
