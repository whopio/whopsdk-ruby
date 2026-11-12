# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Candles
      module Types
        module ListCandlesRequestInterval
          extend Whop_sdk::Internal::Types::Enum

          ONE_H = "1h"
          TWO_H = "2h"
          FOUR_H = "4h"
          SIX_H = "6h"
          TWELVE_H = "12h"
          ONE_D = "1d"
          ONE_W = "1w"
        end
      end
    end
  end
end
