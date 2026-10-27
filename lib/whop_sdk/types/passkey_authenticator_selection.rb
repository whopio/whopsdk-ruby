# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyAuthenticatorSelection < Internal::Types::Model
      field :require_resident_key, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :resident_key, -> { Whop_sdk::Types::PasskeyAuthenticatorSelectionResidentKey }, optional: false, nullable: false

      field :user_verification, -> { Whop_sdk::Types::PasskeyAuthenticatorSelectionUserVerification }, optional: false, nullable: false
    end
  end
end
