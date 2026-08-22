# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccessLevel
      extend Whop_sdk::Internal::Types::Enum

      NO_ACCESS = "no_access"
      ADMIN = "admin"
      CUSTOMER = "customer"
    end
  end
end
