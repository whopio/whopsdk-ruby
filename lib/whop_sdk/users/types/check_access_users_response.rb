# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class CheckAccessUsersResponse < Internal::Types::Model
        field :access_level, -> { Whop_sdk::Users::Types::CheckAccessUsersResponseAccessLevel }, optional: false, nullable: false

        field :has_access, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
