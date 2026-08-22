# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      # Fiat pairs only: the source currency.
      class CreateSwapsResponseFromToken < Internal::Types::Model
        field :symbol, -> { String }, optional: true, nullable: false
      end
    end
  end
end
