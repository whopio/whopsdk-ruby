# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class CreateQuoteSwapsRequest < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :from_address, -> { String }, optional: true, nullable: false

        field :from_chain, -> { Whop_sdk::Swaps::Types::CreateQuoteSwapsRequestFromChain }, optional: true, nullable: false

        field :from_token, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :slippage_bps, -> { Integer }, optional: true, nullable: false

        field :to_address, -> { String }, optional: true, nullable: false

        field :to_chain, -> { Whop_sdk::Swaps::Types::CreateQuoteSwapsRequestToChain }, optional: true, nullable: false

        field :to_token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
