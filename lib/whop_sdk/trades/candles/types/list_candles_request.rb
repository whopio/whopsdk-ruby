# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Candles
      module Types
        class ListCandlesRequest < Internal::Types::Model
          field :market, -> { String }, optional: false, nullable: false

          field :interval, -> { Whop_sdk::Trades::Candles::Types::ListCandlesRequestInterval }, optional: false, nullable: false

          field :from, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
