# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      # The connection type for AuthorizedUser.
      class ListAuthorizedUsersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AuthorizedUserListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
