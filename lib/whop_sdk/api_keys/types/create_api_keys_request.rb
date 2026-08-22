# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      class CreateAPIKeysRequest < Internal::Types::Model
        field :api_version_date, -> { Whop_sdk::APIKeys::Types::CreateAPIKeysRequestAPIVersionDate }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :ip_allowlist, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :permissions, -> { Whop_sdk::APIKeys::Types::CreateAPIKeysRequestPermissions }, optional: false, nullable: false

        field :resource_id, -> { String }, optional: false, nullable: false

        field :resource_type, -> { Whop_sdk::APIKeys::Types::CreateAPIKeysRequestResourceType }, optional: false, nullable: false
      end
    end
  end
end
