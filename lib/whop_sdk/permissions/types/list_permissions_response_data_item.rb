# frozen_string_literal: true

module Whop_sdk
  module Permissions
    module Types
      class ListPermissionsResponseDataItem < Internal::Types::Model
        field :action, -> { Whop_sdk::Types::PermissionAction }, optional: false, nullable: false

        field :granted, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
