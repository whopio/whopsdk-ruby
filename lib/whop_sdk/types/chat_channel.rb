# frozen_string_literal: true

module Whop_sdk
  module Types
    # A real-time chat feed attached to an experience, with configurable moderation and posting permissions.
    class ChatChannel < Internal::Types::Model
      field :ban_media, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :ban_urls, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :banned_words, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :experience, -> { Whop_sdk::Types::ChatChannelExperience }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :user_posts_cooldown_seconds, -> { Integer }, optional: false, nullable: true

      field :who_can_post, -> { Whop_sdk::Types::WhoCanPostTypes }, optional: false, nullable: false

      field :who_can_react, -> { Whop_sdk::Types::WhoCanReactTypes }, optional: false, nullable: false
    end
  end
end
