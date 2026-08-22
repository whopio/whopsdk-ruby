# frozen_string_literal: true

module Whop_sdk
  module Types
    class OauthGrant < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :app_id, -> { String }, optional: false, nullable: false

      field :authorized_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :redirect_url, -> { String }, optional: true, nullable: false

      field :revoked_at, -> { String }, optional: false, nullable: true

      field :scopes, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
