# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChannelModeration < Internal::Types::Model
      field :ban_media, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :ban_urls, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :banned_words, -> { Internal::Types::Array[String] }, optional: false, nullable: true

      field :user_posts_cooldown_seconds, -> { Integer }, optional: false, nullable: true

      field :who_can_post, -> { Whop_sdk::Types::ChannelModerationWhoCanPost }, optional: false, nullable: false

      field :who_can_react, -> { Whop_sdk::Types::ChannelModerationWhoCanReact }, optional: false, nullable: false
    end
  end
end
