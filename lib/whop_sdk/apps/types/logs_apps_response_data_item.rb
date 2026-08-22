# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class LogsAppsResponseDataItem < Internal::Types::Model
        field :app_build_id, -> { String }, optional: false, nullable: false

        field :app_id, -> { String }, optional: false, nullable: false

        field :cpu_time_ms, -> { Integer }, optional: true, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :level, -> { Whop_sdk::Apps::Types::LogsAppsResponseDataItemLevel }, optional: false, nullable: false

        field :message, -> { String }, optional: false, nullable: false

        field :outcome, -> { String }, optional: true, nullable: false

        field :request_id, -> { String }, optional: false, nullable: false

        field :request_method, -> { String }, optional: true, nullable: false

        field :request_path, -> { String }, optional: true, nullable: false

        field :response_status, -> { Integer }, optional: true, nullable: false

        field :source, -> { Whop_sdk::Apps::Types::LogsAppsResponseDataItemSource }, optional: false, nullable: false

        field :stack, -> { String }, optional: true, nullable: false

        field :truncated, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :wall_time_ms, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
