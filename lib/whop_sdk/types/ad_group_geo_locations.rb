# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupGeoLocations < Internal::Types::Model
      field :cities, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupCity] }, optional: false, nullable: false

      field :countries, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :country_groups, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :custom_locations, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupCustomLocation] }, optional: false, nullable: false

      field :regions, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :zips, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
