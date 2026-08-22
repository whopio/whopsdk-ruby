# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class ListNotificationsRequest < Internal::Types::Model
        field :unread, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :mentions, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
