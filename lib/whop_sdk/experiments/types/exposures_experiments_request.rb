# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ExposuresExperimentsRequest < Internal::Types::Model
        field :subject, -> { Whop_sdk::Types::ExposuresExperimentsRequestSubject }, optional: true, nullable: false

        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

        field :flag_key, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :properties, -> { String }, optional: true, nullable: false
      end
    end
  end
end
