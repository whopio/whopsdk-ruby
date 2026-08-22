# frozen_string_literal: true

module Whop_sdk
  module Types
    class Passkey < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :credential_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_used_at, -> { String }, optional: false, nullable: true

      field :nickname, -> { String }, optional: false, nullable: false
    end
  end
end
