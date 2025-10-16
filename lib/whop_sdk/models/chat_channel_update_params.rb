# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ChatChannels#update
    class ChatChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ban_media
      #   Whether media uploads are banned in this chat
      #
      #   @return [Boolean, nil]
      optional :ban_media, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute ban_urls
      #   Whether URLs are banned in this chat
      #
      #   @return [Boolean, nil]
      optional :ban_urls, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute banned_words
      #   List of banned words for this chat
      #
      #   @return [Array<String>, nil]
      optional :banned_words, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute user_posts_cooldown_seconds
      #   The cooldown period in seconds between user posts
      #
      #   @return [Integer, nil]
      optional :user_posts_cooldown_seconds, Integer, nil?: true

      # @!attribute who_can_post
      #   Who can post on a chat feed
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPost, nil]
      optional :who_can_post, enum: -> { WhopSDK::WhoCanPost }, nil?: true

      # @!attribute who_can_react
      #   Who can react on a chat feed
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanReact, nil]
      optional :who_can_react, enum: -> { WhopSDK::WhoCanReact }, nil?: true

      # @!method initialize(ban_media: nil, ban_urls: nil, banned_words: nil, user_posts_cooldown_seconds: nil, who_can_post: nil, who_can_react: nil, request_options: {})
      #   @param ban_media [Boolean, nil] Whether media uploads are banned in this chat
      #
      #   @param ban_urls [Boolean, nil] Whether URLs are banned in this chat
      #
      #   @param banned_words [Array<String>, nil] List of banned words for this chat
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The cooldown period in seconds between user posts
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPost, nil] Who can post on a chat feed
      #
      #   @param who_can_react [Symbol, WhopSDK::Models::WhoCanReact, nil] Who can react on a chat feed
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
