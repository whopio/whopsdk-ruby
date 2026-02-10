# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ChatChannels#update
    class ChatChannelUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ban_media
      #   Whether media uploads such as images and videos are banned in this chat channel.
      #
      #   @return [Boolean, nil]
      optional :ban_media, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute ban_urls
      #   Whether URLs and links are banned from being posted in this chat channel.
      #
      #   @return [Boolean, nil]
      optional :ban_urls, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute banned_words
      #   A list of words that are automatically blocked from messages in this chat
      #   channel. For example, ['spam', 'scam'].
      #
      #   @return [Array<String>, nil]
      optional :banned_words, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute user_posts_cooldown_seconds
      #   The minimum number of seconds a user must wait between sending messages in this
      #   chat channel.
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
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ChatChannelUpdateParams} for more details.
      #
      #   @param ban_media [Boolean, nil] Whether media uploads such as images and videos are banned in this chat channel.
      #
      #   @param ban_urls [Boolean, nil] Whether URLs and links are banned from being posted in this chat channel.
      #
      #   @param banned_words [Array<String>, nil] A list of words that are automatically blocked from messages in this chat channe
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The minimum number of seconds a user must wait between sending messages in this
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPost, nil] Who can post on a chat feed
      #
      #   @param who_can_react [Symbol, WhopSDK::Models::WhoCanReact, nil] Who can react on a chat feed
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
