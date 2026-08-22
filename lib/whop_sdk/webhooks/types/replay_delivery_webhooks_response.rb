# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ReplayDeliveryWebhooksResponse < Internal::Types::Model
        field :body, -> { String }, optional: false, nullable: false

        field :status, -> { Integer }, optional: false, nullable: false

        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
