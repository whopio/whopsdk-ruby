# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperienceNotificationPreference < Internal::Types::Model
      field :level, -> { Whop_sdk::Types::ExperienceNotificationPreferenceLevel }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::ExperienceNotificationPreferenceObject }, optional: false, nullable: false

      field :scope, -> { Whop_sdk::Types::NotificationPreferenceScope }, optional: false, nullable: false
    end
  end
end
