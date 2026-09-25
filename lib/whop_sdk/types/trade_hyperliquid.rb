# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradeHyperliquid < Internal::Types::Model
      field :builder_fee_bps, -> { String }, optional: false, nullable: true
    end
  end
end
