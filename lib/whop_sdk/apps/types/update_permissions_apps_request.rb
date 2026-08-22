# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class UpdatePermissionsAppsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :requested_permissions, -> { Internal::Types::Array[Whop_sdk::Apps::Types::UpdatePermissionsAppsRequestRequestedPermissionsItem] }, optional: false, nullable: false
      end
    end
  end
end
