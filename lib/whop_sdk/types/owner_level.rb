# frozen_string_literal: true

module Whop_sdk
  module Types
    class OwnerLevel < Internal::Types::Model
      field :current, -> { Integer }, optional: false, nullable: false

      field :points, -> { Integer }, optional: false, nullable: false

      field :points_by_source, -> { Whop_sdk::Types::OwnerLevelPoints }, optional: false, nullable: false

      field :points_to_next, -> { Integer }, optional: false, nullable: true

      field :resets_at, -> { String }, optional: false, nullable: false
    end
  end
end
