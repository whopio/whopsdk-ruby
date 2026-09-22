# frozen_string_literal: true

module Whop_sdk
  module Types
    class FunnelComparison < Internal::Types::Model
      field :baseline, -> { String }, optional: false, nullable: false

      field :difference_confidence_interval, -> { Whop_sdk::Types::FunnelConfidenceInterval }, optional: false, nullable: true

      field :difference_percentage_points, -> { Integer }, optional: false, nullable: false

      field :relative_lift_percent, -> { Integer }, optional: false, nullable: true
    end
  end
end
