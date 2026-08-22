# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class RetrieveWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
