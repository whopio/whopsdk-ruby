# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      module ListMembersRequestAccessLevel
        extend Whop_sdk::Internal::Types::Enum

        NO_ACCESS = "no_access"
        ADMIN = "admin"
        CUSTOMER = "customer"
      end
    end
  end
end
