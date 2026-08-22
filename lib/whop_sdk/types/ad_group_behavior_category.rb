# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupBehaviorCategory < Internal::Types::Model
      field :behavior_type, -> { Whop_sdk::Types::AdGroupBehaviorCategoryBehaviorType }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :period, -> { Integer }, optional: true, nullable: false
    end
  end
end
