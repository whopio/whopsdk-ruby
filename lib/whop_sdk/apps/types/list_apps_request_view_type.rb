# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      module ListAppsRequestViewType
        extend Whop_sdk::Internal::Types::Enum

        HUB = "hub"
        DISCOVER = "discover"
        DASH = "dash"
        DASHBOARD = "dashboard"
        ANALYTICS = "analytics"
        SKILLS = "skills"
        OPENAPI = "openapi"
      end
    end
  end
end
