# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class ListMessagesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ChatMessage] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Messages::Types::ListMessagesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
