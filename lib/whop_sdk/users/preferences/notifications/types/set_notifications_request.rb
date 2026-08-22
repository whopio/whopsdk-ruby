# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Types
          class SetNotificationsRequest < Internal::Types::Model
            field :preferences, -> { Internal::Types::Array[Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequestPreferencesItem] }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
