# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class ListReportsResponseDataItem < Internal::Types::Model
          field :breakdowns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :columns, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemColumnsItem] }, optional: false, nullable: false

          field :description, -> { String }, optional: false, nullable: false

          field :key, -> { String }, optional: false, nullable: false

          field :path, -> { String }, optional: false, nullable: false

          field :window_field, -> { String }, optional: false, nullable: true

          field :window_kind, -> { Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemWindowKind }, optional: false, nullable: false
        end
      end
    end
  end
end
