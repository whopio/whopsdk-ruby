# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Types
      class BadgesNotificationsRequest < Internal::Types::Model
        field :experience_ids, -> { String }, optional: true, nullable: false

        field :last_fetched_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
