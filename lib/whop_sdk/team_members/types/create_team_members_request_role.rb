# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      module CreateTeamMembersRequestRole
        extend Whop_sdk::Internal::Types::Enum

        OWNER = "owner"
        ADMIN = "admin"
        SALES_MANAGER = "sales_manager"
        MODERATOR = "moderator"
        ADVERTISER = "advertiser"
        WORKFORCE = "workforce"
      end
    end
  end
end
