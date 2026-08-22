# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Events::Types::ListEventsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Events::Types::ListEventsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
