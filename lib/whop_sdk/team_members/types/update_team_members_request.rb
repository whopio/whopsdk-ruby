# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      class UpdateTeamMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :role, -> { Whop_sdk::TeamMembers::Types::UpdateTeamMembersRequestRole }, optional: false, nullable: false
      end
    end
  end
end
