# frozen_string_literal: true

module Whop_sdk
  module Permissions
    module Types
      class ListPermissionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Permissions::Types::ListPermissionsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
