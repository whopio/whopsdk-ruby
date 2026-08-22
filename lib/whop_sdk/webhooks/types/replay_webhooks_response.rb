# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ReplayWebhooksResponse < Internal::Types::Model
        field :queued, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
