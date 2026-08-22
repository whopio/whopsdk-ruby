# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      class CreateAPIKeyCompaniesRequest < Internal::Types::Model
        field :parent_company_id, -> { String }, optional: false, nullable: false

        field :child_company_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :permissions, -> { Internal::Types::Array[Whop_sdk::Companies::Types::CreateAPIKeyCompaniesRequestPermissionsItem] }, optional: true, nullable: false

        field :role, -> { Whop_sdk::Types::PermissionSystemRoles }, optional: true, nullable: false
      end
    end
  end
end
