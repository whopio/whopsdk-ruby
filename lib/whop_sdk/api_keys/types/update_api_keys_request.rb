# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      class UpdateAPIKeysRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :api_version_date, -> { Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestAPIVersionDate }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :ip_allowlist, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :permissions, -> { Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestPermissions }, optional: true, nullable: false
      end
    end
  end
end
