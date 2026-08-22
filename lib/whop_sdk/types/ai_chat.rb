# frozen_string_literal: true

module Whop_sdk
  module Types
    # An AI-powered chat conversation belonging to a user, with optional scheduled automation.
    class AiChat < Internal::Types::Model
      field :blended_token_usage, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_message_at, -> { String }, optional: false, nullable: true

      field :message_count, -> { Integer }, optional: false, nullable: false

      field :notification_preference, -> { Whop_sdk::Types::AiChatNotificationPreferences }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::AiChatUser }, optional: false, nullable: false
    end
  end
end
