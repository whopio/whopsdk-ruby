# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      class CreateTeamMembersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :role, -> { Whop_sdk::TeamMembers::Types::CreateTeamMembersRequestRole }, optional: false, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
