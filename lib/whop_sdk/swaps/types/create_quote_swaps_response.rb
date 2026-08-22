# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      class CreateQuoteSwapsResponse < Internal::Types::Model
        field :amount_in, -> { String }, optional: false, nullable: false

        field :amount_out, -> { String }, optional: false, nullable: false

        field :amount_out_min, -> { String }, optional: true, nullable: false

        field :bridge_fee, -> { String }, optional: true, nullable: false

        field :estimated_duration_seconds, -> { Integer }, optional: true, nullable: false

        field :fee_bps, -> { Integer }, optional: false, nullable: false

        field :from_address, -> { String }, optional: true, nullable: false

        field :from_token, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Swaps::Types::CreateQuoteSwapsResponseObject }, optional: false, nullable: false

        field :rate, -> { String }, optional: false, nullable: false

        field :requires_token_approval, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :to_address, -> { String }, optional: true, nullable: false

        field :to_token, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
