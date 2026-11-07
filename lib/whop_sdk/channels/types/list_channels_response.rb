# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class ListChannelsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ChannelListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Channels::Types::ListChannelsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
