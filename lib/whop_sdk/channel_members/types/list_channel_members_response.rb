# frozen_string_literal: true

module Whop_sdk
  module ChannelMembers
    module Types
      class ListChannelMembersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ChannelMember] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ChannelMembers::Types::ListChannelMembersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
