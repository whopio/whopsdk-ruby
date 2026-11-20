# frozen_string_literal: true

module Whop_sdk
  module Types
    # A stat with its unit and its arms. `control` is always present. One more key per variant, named as the
    # experiment's variants are, each with its lift over the control. A stat read against the period before the change
    # has the one arm `after`.
    class ExperimentReading < Internal::Types::Model
      field :control, -> { Whop_sdk::Types::ExperimentArmResults }, optional: false, nullable: false

      field :direction, -> { Whop_sdk::Types::ExperimentReadingDirection }, optional: true, nullable: false

      field :estimate, -> { Integer }, optional: true, nullable: false

      field :metric, -> { String }, optional: false, nullable: false

      field :params, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :unit, -> { String }, optional: false, nullable: false
    end
  end
end
