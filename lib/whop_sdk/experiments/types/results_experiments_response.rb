# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ResultsExperimentsResponse < Internal::Types::Model
        field :conclusion, -> { String }, optional: true, nullable: false

        field :ended_at, -> { String }, optional: true, nullable: false

        field :flag_key, -> { String }, optional: false, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :primary_stat, -> { String }, optional: true, nullable: false

        field :started_at, -> { String }, optional: true, nullable: false

        field :stats, -> { Internal::Types::Array[Whop_sdk::Types::ExperimentReading] }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Experiments::Types::ResultsExperimentsResponseStatus }, optional: false, nullable: false

        field :to, -> { String }, optional: true, nullable: false
      end
    end
  end
end
