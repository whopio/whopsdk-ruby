# frozen_string_literal: true

module Whop_sdk
  module Types
    class OwnerLevelPoints < Internal::Types::Model
      field :ads, -> { Integer }, optional: false, nullable: false

      field :cards, -> { Integer }, optional: false, nullable: false

      field :trading, -> { Integer }, optional: false, nullable: false
    end
  end
end
