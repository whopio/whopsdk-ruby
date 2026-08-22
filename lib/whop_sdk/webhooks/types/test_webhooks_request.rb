# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class TestWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :event, -> { String }, optional: false, nullable: false
      end
    end
  end
end
