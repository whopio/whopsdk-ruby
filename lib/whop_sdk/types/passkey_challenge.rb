# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyChallenge < Internal::Types::Model
      field :challenge, -> { String }, optional: false, nullable: false

      field :creation_options, -> { Whop_sdk::Types::PasskeyCreationOptions }, optional: false, nullable: true

      field :request_options, -> { Whop_sdk::Types::PasskeyRequestOptions }, optional: false, nullable: true
    end
  end
end
