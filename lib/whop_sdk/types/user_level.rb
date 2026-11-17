# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserLevel < Internal::Types::Model
      field :current, -> { Integer }, optional: false, nullable: false

      field :points, -> { Integer }, optional: false, nullable: true

      field :points_by_source, -> { Whop_sdk::Types::OwnerLevelPoints }, optional: false, nullable: true

      field :resets_at, -> { String }, optional: false, nullable: true
    end
  end
end
