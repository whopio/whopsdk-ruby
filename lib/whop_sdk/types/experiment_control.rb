# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentControl < Internal::Types::Model
      field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false
    end
  end
end
