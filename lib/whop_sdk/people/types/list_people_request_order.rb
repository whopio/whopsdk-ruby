# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      module ListPeopleRequestOrder
        extend Whop_sdk::Internal::Types::Enum

        FIRST_SEEN_AT = "first_seen_at"
        LAST_SEEN_AT = "last_seen_at"
        FIRST_PURCHASE_AT = "first_purchase_at"
        LAST_PURCHASE_AT = "last_purchase_at"
        PURCHASE_COUNT = "purchase_count"
        EVENT_COUNT = "event_count"
        LTV = "ltv"
        AOV = "aov"
        NAME = "name"
        EMAIL = "email"
      end
    end
  end
end
