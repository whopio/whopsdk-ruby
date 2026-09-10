# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class UpdateExperimentsRequestVariantsItem < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

        field :weight, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
