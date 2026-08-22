# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class ListStatsResponseDataItem < Internal::Types::Model
        field :description, -> { String }, optional: false, nullable: false

        field :key, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :properties, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :unit, -> { Whop_sdk::Stats::Types::ListStatsResponseDataItemUnit }, optional: false, nullable: false

        field :windows, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
