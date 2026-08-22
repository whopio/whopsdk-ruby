# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ListDeliveriesWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
