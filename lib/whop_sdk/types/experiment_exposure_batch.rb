# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentExposureBatch < Internal::Types::Model
      field :exposures, -> { Internal::Types::Hash[String, Whop_sdk::Types::ExperimentExposure] }, optional: false, nullable: false
    end
  end
end
