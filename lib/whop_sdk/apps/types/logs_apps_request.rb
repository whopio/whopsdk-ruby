# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class LogsAppsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :app_build_id, -> { String }, optional: true, nullable: false

        field :level, -> { Whop_sdk::Apps::Types::LogsAppsRequestLevel }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
