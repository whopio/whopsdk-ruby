# frozen_string_literal: true

module Whop_sdk
  module TeamMembers
    module Types
      class ListTeamMembersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::TeamMember] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::TeamMembers::Types::ListTeamMembersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
