# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationPreferenceState < Internal::Types::Model
      field :level, -> { Whop_sdk::Types::NotificationPreferenceStateLevel }, optional: false, nullable: true

      field :object, -> { Whop_sdk::Types::NotificationPreferenceStateObject }, optional: false, nullable: false

      field :scope, -> { Whop_sdk::Types::NotificationPreferenceScope }, optional: false, nullable: false
    end
  end
end
