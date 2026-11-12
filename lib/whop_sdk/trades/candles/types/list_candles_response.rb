# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Candles
      module Types
        class ListCandlesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::Candle] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Trades::Candles::Types::ListCandlesResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
