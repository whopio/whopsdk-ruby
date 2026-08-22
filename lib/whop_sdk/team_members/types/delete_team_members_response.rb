# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      class DeleteTeamMembersResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
