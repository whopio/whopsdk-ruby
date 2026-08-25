# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionCompleteAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :client_secret, -> { String }, optional: false, nullable: false

      field :kind, -> { Whop_sdk::Types::CheckoutSessionCompleteActionKind }, optional: false, nullable: false
    end
  end
end
