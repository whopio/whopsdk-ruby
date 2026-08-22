# frozen_string_literal: true

module Whop_sdk
  module Types
    class APIKey < Internal::Types::Model
      field :api_version_date, -> { Whop_sdk::Types::APIKeyAPIVersionDate }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: true

      field :grants, -> { Internal::Types::Array[Whop_sdk::Types::APIKeyGrant] }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :ip_allowlist, -> { Internal::Types::Array[String] }, optional: false, nullable: true

      field :is_default_for_resource, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :obfuscated_secret_key, -> { String }, optional: false, nullable: false

      field :secret_key, -> { String }, optional: true, nullable: false

      field :system_role, -> { Whop_sdk::Types::APIKeySystemRole }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
