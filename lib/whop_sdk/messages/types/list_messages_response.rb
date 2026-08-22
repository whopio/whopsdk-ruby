# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      # The connection type for DmsPost.
      class ListMessagesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::MessageListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
