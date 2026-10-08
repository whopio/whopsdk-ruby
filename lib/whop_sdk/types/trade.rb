# frozen_string_literal: true

module Whop_sdk
  module Types
    class Trade < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :amount, -> { String }, optional: false, nullable: true

      field :average_price, -> { String }, optional: false, nullable: true

      field :completed_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :failure_code, -> { Whop_sdk::Types::TradeFailureCode }, optional: false, nullable: true

      field :filled_size, -> { String }, optional: false, nullable: true

      field :funds_location, -> { Whop_sdk::Types::TradeFundsLocation }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :leverage, -> { Integer }, optional: false, nullable: true

      field :market, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradeObject }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::TradeStatus }, optional: false, nullable: false

      field :status_detail, -> { Whop_sdk::Types::TradeStatusDetail }, optional: false, nullable: true

      field :type, -> { Whop_sdk::Types::TradeType }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
