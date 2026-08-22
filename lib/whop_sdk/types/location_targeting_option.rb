# frozen_string_literal: true

module Whop_sdk
  module Types
    class LocationTargetingOption < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: true

      field :country_code, -> { String }, optional: false, nullable: true

      field :country_name, -> { String }, optional: false, nullable: true

      field :key, -> { String }, optional: false, nullable: false

      field :location_type, -> { Whop_sdk::Types::LocationTargetingOptionLocationType }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: false, nullable: true
    end
  end
end
