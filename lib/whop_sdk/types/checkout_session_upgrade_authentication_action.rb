# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionUpgradeAuthenticationAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :session_intent_id, -> { String }, optional: false, nullable: true

      field :sign_in_intent, -> { Whop_sdk::Types::CheckoutSessionUpgradeAuthenticationActionSignInIntent }, optional: false, nullable: false
    end
  end
end
