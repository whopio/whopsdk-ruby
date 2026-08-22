# frozen_string_literal: true

module Whop_sdk
  module SupportChannels
    module Types
      # The connection type for DmsFeed.
      class ListSupportChannelsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SupportChannelListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
