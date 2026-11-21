# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperienceNotificationPreference < Internal::Types::Model
      field :level, -> { Whop_sdk::Types::ExperienceNotificationPreferenceLevel }, optional: false, nullable: false

      field :scope, -> { Whop_sdk::Types::NotificationPreferenceScope }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::ExperienceNotificationPreferenceType }, optional: false, nullable: false
    end
  end
end
