# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupGeoLocationsBody < Internal::Types::Model
      field :cities, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupGeoLocationsBodyCitiesItem] }, optional: true, nullable: false

      field :countries, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :country_groups, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :custom_locations, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupGeoLocationsBodyCustomLocationsItem] }, optional: true, nullable: false

      field :regions, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :zips, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupGeoLocationsBodyZipsItem] }, optional: true, nullable: false
    end
  end
end
