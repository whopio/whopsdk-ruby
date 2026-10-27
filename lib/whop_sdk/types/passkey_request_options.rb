# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyRequestOptions < Internal::Types::Model
      field :allow_credentials, -> { Internal::Types::Array[Whop_sdk::Types::PasskeyCredentialDescriptor] }, optional: false, nullable: false

      field :challenge, -> { String }, optional: false, nullable: false

      field :rp_id, -> { String }, optional: false, nullable: false

      field :timeout, -> { Integer }, optional: false, nullable: false

      field :user_verification, -> { Whop_sdk::Types::PasskeyRequestOptionsUserVerification }, optional: false, nullable: false
    end
  end
end
