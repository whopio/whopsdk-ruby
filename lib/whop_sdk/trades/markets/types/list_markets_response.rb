# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Markets
      module Types
        class ListMarketsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::Market] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Trades::Markets::Types::ListMarketsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
