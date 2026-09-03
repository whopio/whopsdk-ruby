# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class MetricStatsRequest < Internal::Types::Model
        field :resource, -> { String }, optional: false, nullable: false

        field :granularity, -> { String }, optional: true, nullable: false

        field :breakdowns, -> { String }, optional: true, nullable: false

        field :filters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
