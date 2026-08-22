# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PulseEventsResponseDataItem < Internal::Types::Model
        field :event_name, -> { Whop_sdk::Events::Types::PulseEventsResponseDataItemEventName }, optional: false, nullable: false

        field :event_time, -> { String }, optional: false, nullable: false

        field :total_usd_amount, -> { Integer }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Events::Types::PulseEventsResponseDataItemType }, optional: false, nullable: false

        field :user, -> { Whop_sdk::Events::Types::PulseEventsResponseDataItemUser }, optional: true, nullable: false
      end
    end
  end
end
