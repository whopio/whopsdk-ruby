# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentArmResults < Internal::Types::Model
      field :confidence_interval, -> { Internal::Types::Array[Integer] }, optional: false, nullable: true

      field :lift_confidence_interval, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :lift_percentage, -> { Integer }, optional: true, nullable: false

      field :lift_unit, -> { Integer }, optional: true, nullable: false

      field :params, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

      field :statistically_significant, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :value, -> { Integer }, optional: false, nullable: true
    end
  end
end
