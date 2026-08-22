# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ReplayWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :events, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :failed_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :regenerate_ids, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :sent_after, -> { String }, optional: false, nullable: false

        field :sent_before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
