# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class ListTradesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Trade] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Trades::Types::ListTradesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
