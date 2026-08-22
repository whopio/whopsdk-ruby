# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class MarkReadNotificationsRequest < Internal::Types::Model
        field :all, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
