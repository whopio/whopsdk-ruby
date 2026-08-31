# frozen_string_literal: true

module Whop_sdk
  module APILogs
    module Types
      class ListAPILogsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :operation_name, -> { String }, optional: true, nullable: false

        field :http_method, -> { Whop_sdk::APILogs::Types::ListAPILogsRequestHTTPMethod }, optional: true, nullable: false

        field :status, -> { Whop_sdk::APILogs::Types::ListAPILogsRequestStatus }, optional: true, nullable: false

        field :api_key_id, -> { String }, optional: true, nullable: false

        field :min_duration_ms, -> { Integer }, optional: true, nullable: false

        field :max_duration_ms, -> { Integer }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
