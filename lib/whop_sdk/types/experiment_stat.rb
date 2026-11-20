# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentStat < Internal::Types::Model
      field :direction, -> { Whop_sdk::Types::ExperimentStatDirection }, optional: false, nullable: false

      field :estimate, -> { Integer }, optional: false, nullable: true

      field :metric, -> { String }, optional: false, nullable: false

      field :params, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
