# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyCredentialParameter < Internal::Types::Model
      field :alg, -> { Integer }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::PasskeyCredentialParameterType }, optional: false, nullable: false
    end
  end
end
