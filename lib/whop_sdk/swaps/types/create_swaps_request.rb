# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class CreateSwapsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount, -> { String }, optional: true, nullable: false

        field :from_chain, -> { Whop_sdk::Swaps::Types::CreateSwapsRequestFromChain }, optional: true, nullable: false

        field :from_token, -> { String }, optional: false, nullable: false

        field :slippage_bps, -> { Integer }, optional: true, nullable: false

        field :to_amount, -> { String }, optional: true, nullable: false

        field :to_chain, -> { Whop_sdk::Swaps::Types::CreateSwapsRequestToChain }, optional: true, nullable: false

        field :to_token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
