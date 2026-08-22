# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      module ListAppsRequestOrder
        extend Whop_sdk::Internal::Types::Enum

        CREATED_AT = "created_at"
        DISCOVERABLE_AT = "discoverable_at"
        TEMPLATE_USAGE = "template_usage"
        TOTAL_INSTALLS_LAST30DAYS = "total_installs_last_30_days"
        TOTAL_INSTALLS_LAST7DAYS = "total_installs_last_7_days"
      end
    end
  end
end
