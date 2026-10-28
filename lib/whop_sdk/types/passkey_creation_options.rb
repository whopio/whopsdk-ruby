# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyCreationOptions < Internal::Types::Model
      field :attestation, -> { Whop_sdk::Types::PasskeyCreationOptionsAttestation }, optional: false, nullable: false

      field :authenticator_selection, -> { Whop_sdk::Types::PasskeyAuthenticatorSelection }, optional: false, nullable: false

      field :challenge, -> { String }, optional: false, nullable: false

      field :exclude_credentials, -> { Internal::Types::Array[Whop_sdk::Types::PasskeyCredentialDescriptor] }, optional: false, nullable: false

      field :extensions, -> { Whop_sdk::Types::PasskeyCreationExtensions }, optional: false, nullable: false

      field :pub_key_cred_params, -> { Internal::Types::Array[Whop_sdk::Types::PasskeyCredentialParameter] }, optional: false, nullable: false

      field :rp, -> { Whop_sdk::Types::PasskeyRelyingParty }, optional: false, nullable: false

      field :timeout, -> { Integer }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::PasskeyUserEntity }, optional: false, nullable: false
    end
  end
end
