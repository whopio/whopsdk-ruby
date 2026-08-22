# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Types
          class SetNotificationsRequestPreferencesItem < Internal::Types::Model
            field :level, -> { Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequestPreferencesItemLevel }, optional: false, nullable: true

            field :scope, -> { Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequestPreferencesItemScope }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
