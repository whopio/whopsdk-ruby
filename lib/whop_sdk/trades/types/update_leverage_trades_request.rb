# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class UpdateLeverageTradesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :leverage, -> { Integer }, optional: false, nullable: false

        field :margin_mode, -> { Whop_sdk::Trades::Types::UpdateLeverageTradesRequestMarginMode }, optional: false, nullable: false

        field :market, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :provider, -> { Whop_sdk::Trades::Types::UpdateLeverageTradesRequestProvider }, optional: false, nullable: false
      end
    end
  end
end
