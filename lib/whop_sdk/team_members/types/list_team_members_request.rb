# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      class ListTeamMembersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :status, -> { Whop_sdk::TeamMembers::Types::ListTeamMembersRequestStatus }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :role, -> { Whop_sdk::TeamMembers::Types::ListTeamMembersRequestRole }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::TeamMembers::Types::ListTeamMembersRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::TeamMembers::Types::ListTeamMembersRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
