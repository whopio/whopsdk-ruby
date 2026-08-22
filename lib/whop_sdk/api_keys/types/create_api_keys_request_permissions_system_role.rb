# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      module CreateAPIKeysRequestPermissionsSystemRole
        extend Whop_sdk::Internal::Types::Enum

        OWNER = "owner"
        ADMIN = "admin"
        MODERATOR = "moderator"
        SALES_MANAGER = "sales_manager"
        ADVERTISER = "advertiser"
      end
    end
  end
end
