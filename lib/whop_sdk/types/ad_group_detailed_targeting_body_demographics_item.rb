# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDetailedTargetingBodyDemographicsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { Whop_sdk::Types::AdGroupDetailedTargetingBodyDemographicsItemType }, optional: false, nullable: false
    end
  end
end
