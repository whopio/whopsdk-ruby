# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class CreateNotificationsResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
