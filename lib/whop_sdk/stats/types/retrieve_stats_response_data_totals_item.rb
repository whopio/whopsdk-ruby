# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponseDataTotalsItem < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :value, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
