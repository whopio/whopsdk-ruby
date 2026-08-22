# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PulseEventsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Events::Types::PulseEventsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Events::Types::PulseEventsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
