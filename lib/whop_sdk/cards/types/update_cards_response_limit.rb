# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # The spending limit configuration.
      class UpdateCardsResponseLimit < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :frequency, -> { Whop_sdk::Cards::Types::UpdateCardsResponseLimitFrequency }, optional: false, nullable: false
      end
    end
  end
end
