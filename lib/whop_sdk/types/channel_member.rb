# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChannelMember < Internal::Types::Model
      field :channel_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: true

      field :inbox_status, -> { Whop_sdk::Types::ChannelMemberInboxStatus }, optional: false, nullable: true

      field :last_viewed_at, -> { String }, optional: false, nullable: true

      field :notification_preference, -> { Whop_sdk::Types::ChannelMemberNotificationPreference }, optional: false, nullable: true

      field :pinned_position, -> { Integer }, optional: false, nullable: true

      field :unread, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: true

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
