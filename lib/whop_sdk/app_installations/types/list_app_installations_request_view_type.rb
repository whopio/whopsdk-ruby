# frozen_string_literal: true

module Whop_sdk
  module AppInstallations
    module Types
      module ListAppInstallationsRequestViewType
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
