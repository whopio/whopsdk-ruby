# frozen_string_literal: true

module Whop_sdk
  module Types
    class DetailedTargetingOption < Internal::Types::Model
      field :audience_size_lower_bound, -> { Integer }, optional: false, nullable: true

      field :audience_size_upper_bound, -> { Integer }, optional: false, nullable: true

      field :behavior_type, -> { Whop_sdk::Types::DetailedTargetingOptionBehaviorType }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
