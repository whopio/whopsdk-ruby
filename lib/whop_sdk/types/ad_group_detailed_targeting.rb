# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDetailedTargeting < Internal::Types::Model
      field :behaviors, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupBehaviorCategory] }, optional: false, nullable: false

      field :demographics, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDemographicCategory] }, optional: false, nullable: false

      field :interests, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupTargetingCategory] }, optional: false, nullable: false
    end
  end
end
