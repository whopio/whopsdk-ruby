# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupRegions < Internal::Types::Model
      field :exclude, -> { Whop_sdk::Types::AdGroupGeoLocations }, optional: false, nullable: false

      field :include, -> { Whop_sdk::Types::AdGroupGeoLocations }, optional: false, nullable: false
    end
  end
end
