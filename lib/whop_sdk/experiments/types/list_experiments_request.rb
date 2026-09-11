# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ListExperimentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Experiments::Types::ListExperimentsRequestStatus }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Experiments::Types::ListExperimentsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Experiments::Types::ListExperimentsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
