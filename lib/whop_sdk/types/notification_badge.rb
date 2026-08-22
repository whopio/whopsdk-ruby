# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationBadge < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :experience_id, -> { String }, optional: false, nullable: false

      field :has_unread, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :important_count, -> { Integer }, optional: false, nullable: false

      field :last_viewed_at, -> { String }, optional: false, nullable: true
    end
  end
end
