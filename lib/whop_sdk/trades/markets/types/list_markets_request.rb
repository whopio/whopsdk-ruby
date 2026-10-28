# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Markets
      module Types
        class ListMarketsRequest < Internal::Types::Model
          field :instrument_type, -> { Whop_sdk::Trades::Markets::Types::ListMarketsRequestInstrumentType }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
