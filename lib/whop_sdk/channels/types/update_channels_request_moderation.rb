# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      # Moderation settings, accepted only for community channels. Requires chat moderation permission. Omitted settings
      # are preserved.
      class UpdateChannelsRequestModeration < Internal::Types::Model
        field :ban_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ban_urls, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :banned_words, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :user_posts_cooldown_seconds, -> { Integer }, optional: true, nullable: false

        field :who_can_post, -> { Whop_sdk::Channels::Types::UpdateChannelsRequestModerationWhoCanPost }, optional: true, nullable: false

        field :who_can_react, -> { Whop_sdk::Channels::Types::UpdateChannelsRequestModerationWhoCanReact }, optional: true, nullable: false
      end
    end
  end
end
