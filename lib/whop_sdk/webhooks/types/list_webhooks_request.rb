# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ListWebhooksRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :app_id, -> { String }, optional: true, nullable: false

        field :include_app_webhooks, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :has_failures, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
