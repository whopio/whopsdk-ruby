# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupCustomLocation < Internal::Types::Model
      field :distance_unit, -> { Whop_sdk::Types::AdGroupCustomLocationDistanceUnit }, optional: false, nullable: false

      field :latitude, -> { Integer }, optional: false, nullable: false

      field :longitude, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :radius, -> { Integer }, optional: false, nullable: false
    end
  end
end
