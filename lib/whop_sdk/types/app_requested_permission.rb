# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppRequestedPermission < Internal::Types::Model
      field :is_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :justification, -> { String }, optional: false, nullable: true

      field :permission_action, -> { Whop_sdk::Types::AppRequestedPermissionAction }, optional: false, nullable: false
    end
  end
end
