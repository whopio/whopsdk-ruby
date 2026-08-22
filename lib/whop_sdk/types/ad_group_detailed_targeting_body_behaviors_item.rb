# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDetailedTargetingBodyBehaviorsItem < Internal::Types::Model
      field :behavior_type, -> { Whop_sdk::Types::AdGroupDetailedTargetingBodyBehaviorsItemBehaviorType }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :period, -> { Integer }, optional: true, nullable: false
    end
  end
end
