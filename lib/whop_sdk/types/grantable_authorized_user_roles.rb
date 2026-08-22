# frozen_string_literal: true

module Whop_sdk
  module Types
    module GrantableAuthorizedUserRoles
      extend Whop_sdk::Internal::Types::Enum

      OWNER = "owner"
      ADMIN = "admin"
      SALES_MANAGER = "sales_manager"
      MODERATOR = "moderator"
      ADVERTISER = "advertiser"
    end
  end
end
