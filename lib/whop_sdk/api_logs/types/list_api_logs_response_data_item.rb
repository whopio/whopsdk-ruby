# frozen_string_literal: true

module Whop_sdk
  module APILogs
    module Types
      class ListAPILogsResponseDataItem < Internal::Types::Model
        field :api_key_id, -> { String }, optional: true, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :duration_ms, -> { Integer }, optional: true, nullable: false

        field :http_method, -> { Whop_sdk::APILogs::Types::ListAPILogsResponseDataItemHTTPMethod }, optional: true, nullable: false

        field :http_path, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :operation_name, -> { String }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::APILogs::Types::ListAPILogsResponseDataItemStatus }, optional: true, nullable: false

        field :status_code, -> { Integer }, optional: true, nullable: false

        field :user_agent, -> { String }, optional: true, nullable: false
      end
    end
  end
end
