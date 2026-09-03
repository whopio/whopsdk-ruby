# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      class ListAuthorizedUsersRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :role, -> { Whop_sdk::Types::AuthorizedUserRoles }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
