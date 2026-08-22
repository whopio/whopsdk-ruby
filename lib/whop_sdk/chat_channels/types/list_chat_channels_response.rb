# frozen_string_literal: true

module Whop_sdk
  module ChatChannels
    module Types
      # The connection type for ChatFeed.
      class ListChatChannelsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ChatChannelListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
