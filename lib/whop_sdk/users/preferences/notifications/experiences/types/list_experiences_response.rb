# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Experiences
          module Types
            class ListExperiencesResponse < Internal::Types::Model
              field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExperienceNotificationPreference] }, optional: false, nullable: false

              field :page_info, -> { Whop_sdk::Users::Preferences::Notifications::Experiences::Types::ListExperiencesResponsePageInfo }, optional: false, nullable: false
            end
          end
        end
      end
    end
  end
end
