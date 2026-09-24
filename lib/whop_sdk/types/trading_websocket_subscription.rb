# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingWebsocketSubscription < Internal::Types::Model
      field :channel, -> { Whop_sdk::Types::TradingWebsocketSubscriptionChannel }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
