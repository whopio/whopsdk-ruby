# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupPlacement < Internal::Types::Model
      field :platform, -> { Whop_sdk::Types::AdGroupPlacementPlatform }, optional: false, nullable: false

      field :positions, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
