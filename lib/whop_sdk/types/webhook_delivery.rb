# frozen_string_literal: true

module Whop_sdk
  module Types
    class WebhookDelivery < Internal::Types::Model
      field :event, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :replayed_from, -> { String }, optional: false, nullable: true

      field :request_body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: false

      field :response_body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :response_code, -> { Integer }, optional: false, nullable: false

      field :sent_at, -> { String }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :total_time, -> { Integer }, optional: false, nullable: false
    end
  end
end
