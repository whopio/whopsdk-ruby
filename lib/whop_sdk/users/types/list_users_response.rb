# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class ListUsersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::User] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Users::Types::ListUsersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
