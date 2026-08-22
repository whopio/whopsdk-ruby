# frozen_string_literal: true

module Whop_sdk
  module Types
    # Interest, behavior, and demographic targeting, using categories from the ad platform's targeting taxonomy. Entries
    # across interests, behaviors, and demographics are OR'd together (anyone matching any entry is reached), matching
    # Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be combined with
    # demographics.automatic, and unavailable to campaigns with special_ad_categories.
    class AdGroupDetailedTargetingBody < Internal::Types::Model
      field :behaviors, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDetailedTargetingBodyBehaviorsItem] }, optional: true, nullable: false

      field :demographics, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDetailedTargetingBodyDemographicsItem] }, optional: true, nullable: false

      field :interests, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDetailedTargetingBodyInterestsItem] }, optional: true, nullable: false
    end
  end
end
