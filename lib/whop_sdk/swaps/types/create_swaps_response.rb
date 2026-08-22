# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class CreateSwapsResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount_in, -> { Integer }, optional: true, nullable: false

        field :amount_out, -> { Integer }, optional: true, nullable: false

        field :amount_out_expected, -> { String }, optional: true, nullable: false

        field :amount_out_min, -> { String }, optional: true, nullable: false

        field :from_token, -> { Whop_sdk::Swaps::Types::CreateSwapsResponseFromToken }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :object, -> { Whop_sdk::Swaps::Types::CreateSwapsResponseObject }, optional: false, nullable: false

        field :rate, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Swaps::Types::CreateSwapsResponseStatus }, optional: false, nullable: false

        field :to_chain, -> { String }, optional: true, nullable: false

        field :to_token, -> { Whop_sdk::Swaps::Types::CreateSwapsResponseToToken }, optional: true, nullable: false
      end
    end
  end
end
