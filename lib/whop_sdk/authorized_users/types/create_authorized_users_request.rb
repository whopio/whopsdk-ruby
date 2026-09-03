# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      class CreateAuthorizedUsersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :elevation, -> { Whop_sdk::AuthorizedUsers::Types::CreateAuthorizedUsersRequestElevation }, optional: true, nullable: false

        field :role, -> { Whop_sdk::Types::GrantableAuthorizedUserRoles }, optional: false, nullable: false

        field :send_emails, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
