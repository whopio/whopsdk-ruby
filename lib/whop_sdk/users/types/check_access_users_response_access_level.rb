# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      module CheckAccessUsersResponseAccessLevel
        extend Whop_sdk::Internal::Types::Enum

        NO_ACCESS = "no_access"
        ADMIN = "admin"
        CUSTOMER = "customer"
      end
    end
  end
end
