# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CancelTradesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
