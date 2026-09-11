# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentResourceReference < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::ExperimentResourceReferenceObject }, optional: false, nullable: false
    end
  end
end
