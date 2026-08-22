# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Topics
          module Types
            class ListTopicsResponse < Internal::Types::Model
              field :data, -> { Internal::Types::Array[Whop_sdk::Types::UserNotificationPreference] }, optional: false, nullable: false

              field :page_info, -> { Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsResponsePageInfo }, optional: false, nullable: false
            end
          end
        end
      end
    end
  end
end
