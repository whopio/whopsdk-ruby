# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      module ListTeamMembersRequestRole
        extend Whop_sdk::Internal::Types::Enum

        OWNER = "owner"
        ADMIN = "admin"
        SALES_MANAGER = "sales_manager"
        MODERATOR = "moderator"
        ADVERTISER = "advertiser"
        APP_MANAGER = "app_manager"
        SUPPORT = "support"
        MANAGER = "manager"
        WORKFORCE = "workforce"
        CUSTOM = "custom"
      end
    end
  end
end
