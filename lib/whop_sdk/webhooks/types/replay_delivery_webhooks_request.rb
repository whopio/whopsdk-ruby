# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ReplayDeliveryWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :delivery_id, -> { String }, optional: false, nullable: false

        field :regenerate_id, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
