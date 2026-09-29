# frozen_string_literal: true

module Whop_sdk
  module Types
    class EconomicIntelligenceInput < Internal::Types::Model
      field :answer, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
