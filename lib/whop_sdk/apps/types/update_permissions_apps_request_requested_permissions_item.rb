# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class UpdatePermissionsAppsRequestRequestedPermissionsItem < Internal::Types::Model
        field :action, -> { String }, optional: false, nullable: false

        field :is_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :justification, -> { String }, optional: false, nullable: false
      end
    end
  end
end
