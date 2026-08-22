# frozen_string_literal: true

module Whop_sdk
  module Types
    # A user who belongs to a company's team with access determined by their assigned role.
    class AuthorizedUserListItem < Internal::Types::Model
      field :company, -> { Whop_sdk::Types::AuthorizedUserListItemCompany }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :role, -> { Whop_sdk::Types::AuthorizedUserRoles }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::AuthorizedUserListItemUser }, optional: false, nullable: false
    end
  end
end
