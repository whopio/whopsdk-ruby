# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppRequestedPermissionAction < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
