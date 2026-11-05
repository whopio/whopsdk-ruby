# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      module ListProductsRequestOrder
        extend Whop_sdk::Internal::Types::Enum

        CREATED_AT = "created_at"
        ACTIVE_MEMBERSHIPS_COUNT = "active_memberships_count"
        USD_GMV = "usd_gmv"
        USD_GMV30DAYS = "usd_gmv_30_days"
        POSITION = "position"
        DISCOVERABLE_AT = "discoverable_at"
      end
    end
  end
end
