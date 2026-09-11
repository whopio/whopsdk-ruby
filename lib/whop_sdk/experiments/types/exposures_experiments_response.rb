# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ExposuresExperimentsResponse < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Types::ExperimentExposure }

        member -> { Whop_sdk::Types::ExperimentExposureBatch }
      end
    end
  end
end
