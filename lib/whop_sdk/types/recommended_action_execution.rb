# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionExecution < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :completed_at, -> { String }, optional: false, nullable: true

      field :error, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :output, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :position, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::RecommendedActionExecutionStatus }, optional: false, nullable: false
    end
  end
end
