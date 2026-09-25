# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CancelTradesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
