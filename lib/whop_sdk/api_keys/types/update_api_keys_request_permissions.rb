# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      # The permissions policy for the API key: explicit permission statements, or a system role to inherit from.
      # Statements without a `resources` array default to the owning account (Account API keys) or every key-addressable
      # resource (App API keys).
      class UpdateAPIKeysRequestPermissions < Internal::Types::Model
        field :statements, -> { Internal::Types::Array[Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestPermissionsStatementsItem] }, optional: true, nullable: false

        field :system_role, -> { Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestPermissionsSystemRole }, optional: true, nullable: false
      end
    end
  end
end
