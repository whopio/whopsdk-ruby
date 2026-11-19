# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionStat < Internal::Types::Model
      field :direction, -> { Whop_sdk::Types::RecommendedActionStatDirection }, optional: false, nullable: false

      field :estimate, -> { Integer }, optional: false, nullable: true

      field :metric, -> { String }, optional: false, nullable: false

      field :params, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
    end
  end
end
