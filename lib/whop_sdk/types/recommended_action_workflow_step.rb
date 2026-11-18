# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionWorkflowStep < Internal::Types::Model
      field :arguments, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true

      field :operation, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::RecommendedActionWorkflowStepStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
