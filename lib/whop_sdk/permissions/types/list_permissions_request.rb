# frozen_string_literal: true

module Whop_sdk
  module Permissions
    module Types
      class ListPermissionsRequest < Internal::Types::Model
        field :resource_id, -> { String }, optional: false, nullable: false

        field :actions, -> { String }, optional: true, nullable: false
      end
    end
  end
end
