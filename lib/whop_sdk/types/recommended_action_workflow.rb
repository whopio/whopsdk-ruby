# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionWorkflow < Internal::Types::Model
      field :api_version, -> { String }, optional: false, nullable: false

      field :steps, -> { Internal::Types::Array[Whop_sdk::Types::RecommendedActionWorkflowStep] }, optional: false, nullable: false
    end
  end
end
