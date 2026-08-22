# frozen_string_literal: true

module Whop_sdk
  module AccessTokens
    module Types
      class CreateAccessTokensRequest < Internal::Types::Model
        field :company_id, -> { String }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :scoped_actions, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
