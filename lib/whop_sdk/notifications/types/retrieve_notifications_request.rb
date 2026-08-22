# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class RetrieveNotificationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
