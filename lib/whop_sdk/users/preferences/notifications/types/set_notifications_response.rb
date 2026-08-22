# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Types
          class SetNotificationsResponse < Internal::Types::Model
            field :data, -> { Internal::Types::Array[Whop_sdk::Types::NotificationPreferenceState] }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
