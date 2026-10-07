# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class ListReportsResponseDataItemColumnsItem < Internal::Types::Model
          field :aggregate, -> { Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemColumnsItemAggregate }, optional: true, nullable: false

          field :available_on, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :breakdowns, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :default, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :key, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :set, -> { Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemColumnsItemSet }, optional: true, nullable: false

          field :type, -> { Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemColumnsItemType }, optional: false, nullable: false

          field :unit, -> { Whop_sdk::Stats::Reports::Types::ListReportsResponseDataItemColumnsItemUnit }, optional: true, nullable: false

          field :weight, -> { String }, optional: true, nullable: false

          field :windows, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
