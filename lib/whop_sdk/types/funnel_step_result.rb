# frozen_string_literal: true

module Whop_sdk
  module Types
    class FunnelStepResult < Internal::Types::Model
      field :conversion_rate, -> { Integer }, optional: false, nullable: true

      field :count, -> { Integer }, optional: false, nullable: false

      field :step, -> { Integer }, optional: false, nullable: false
    end
  end
end
