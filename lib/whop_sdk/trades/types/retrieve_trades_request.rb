# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class RetrieveTradesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
