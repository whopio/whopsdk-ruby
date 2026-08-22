# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class ListNotificationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Notification] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Notifications::Types::ListNotificationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
