# frozen_string_literal: true

module Whop_sdk
  module Types
    # Locations to target and exclude.
    class AdGroupRegionsBody < Internal::Types::Model
      field :exclude, -> { Whop_sdk::Types::AdGroupGeoLocationsBody }, optional: true, nullable: false

      field :include, -> { Whop_sdk::Types::AdGroupGeoLocationsBody }, optional: true, nullable: false
    end
  end
end
