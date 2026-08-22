# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class UpdatePermissionsAppRequest < Internal::Types::Model
        field :app_id, -> { String }, optional: false, nullable: false

        field :requested_permissions, -> { Internal::Types::Array[Whop_sdk::Apps::Types::UpdatePermissionsAppRequestRequestedPermissionsItem] }, optional: false, nullable: false
      end
    end
  end
end
