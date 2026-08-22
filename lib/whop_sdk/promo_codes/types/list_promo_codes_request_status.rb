# frozen_string_literal: true

module Whop_sdk
  module PromoCodes
    module Types
      module ListPromoCodesRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        INACTIVE = "inactive"
        ARCHIVED = "archived"
        EXPIRED = "expired"
      end
    end
  end
end
