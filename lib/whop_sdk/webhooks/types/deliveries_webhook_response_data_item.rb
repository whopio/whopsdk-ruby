# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      # A webhook log entry containing the request and response details
      class DeliveriesWebhookResponseDataItem < Internal::Types::Model
        field :request_body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :resource_id, -> { String }, optional: false, nullable: false

        field :response_body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :response_code, -> { Integer }, optional: false, nullable: false

        field :sent_at, -> { String }, optional: false, nullable: false

        field :total_time, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
