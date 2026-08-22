# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class BadgesNotificationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::NotificationBadge] }, optional: false, nullable: false
      end
    end
  end
end
