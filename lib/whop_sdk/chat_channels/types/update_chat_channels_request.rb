# frozen_string_literal: true

module Whop_sdk
  module ChatChannels
    module Types
      class UpdateChatChannelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :ban_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ban_urls, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :banned_words, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :user_posts_cooldown_seconds, -> { Integer }, optional: true, nullable: false

        field :who_can_post, -> { Whop_sdk::Types::WhoCanPostTypes }, optional: true, nullable: false

        field :who_can_react, -> { Whop_sdk::Types::WhoCanReactTypes }, optional: true, nullable: false
      end
    end
  end
end
