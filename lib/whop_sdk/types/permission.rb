# frozen_string_literal: true

module Whop_sdk
  module Types
    class Permission < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :allowed_on_api_key, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :allowed_on_app, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :allowed_on_user, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :category, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: false

      field :granted_to_system_roles, -> { Internal::Types::Array[Whop_sdk::Types::PermissionGrantedToSystemRolesItem] }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
