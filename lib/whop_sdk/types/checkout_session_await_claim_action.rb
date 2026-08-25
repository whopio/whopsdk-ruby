# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionAwaitClaimAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :state, -> { Whop_sdk::Types::CheckoutSessionAwaitClaimActionState }, optional: false, nullable: false
    end
  end
end
