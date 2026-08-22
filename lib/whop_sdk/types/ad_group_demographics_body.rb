# frozen_string_literal: true

module Whop_sdk
  module Types
    # Age, gender, and automatic-audience targeting.
    class AdGroupDemographicsBody < Internal::Types::Model
      field :automatic, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :gender, -> { Whop_sdk::Types::AdGroupDemographicsBodyGender }, optional: true, nullable: false

      field :maximum_age, -> { Integer }, optional: true, nullable: false

      field :minimum_age, -> { Integer }, optional: true, nullable: false
    end
  end
end
