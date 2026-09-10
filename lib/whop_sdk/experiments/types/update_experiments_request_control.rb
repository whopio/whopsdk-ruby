# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class UpdateExperimentsRequestControl < Internal::Types::Model
        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false
      end
    end
  end
end
