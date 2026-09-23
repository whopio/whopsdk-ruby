# frozen_string_literal: true

module Whop_sdk
  module Types
    class EconomicIntelligenceOperation < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :tool_name, -> { String }, optional: false, nullable: false
    end
  end
end
