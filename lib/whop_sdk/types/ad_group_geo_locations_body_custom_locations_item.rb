# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupGeoLocationsBodyCustomLocationsItem < Internal::Types::Model
      field :distance_unit, -> { Whop_sdk::Types::AdGroupGeoLocationsBodyCustomLocationsItemDistanceUnit }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: false, nullable: false

      field :longitude, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :radius, -> { Integer }, optional: false, nullable: false
    end
  end
end
