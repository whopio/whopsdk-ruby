# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserNotificationPreference < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :level, -> { Whop_sdk::Types::UserNotificationPreferenceLevel }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::UserNotificationPreferenceObject }, optional: false, nullable: false

      field :scope, -> { Whop_sdk::Types::NotificationPreferenceScope }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
