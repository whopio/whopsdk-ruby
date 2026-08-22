# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDemographics < Internal::Types::Model
      field :automatic, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :gender, -> { Whop_sdk::Types::AdGroupDemographicsGender }, optional: false, nullable: false

      field :maximum_age, -> { Integer }, optional: false, nullable: true

      field :minimum_age, -> { Integer }, optional: false, nullable: true
    end
  end
end
