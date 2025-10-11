# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::ChatChannels#list
    class ChatChannelListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute ban_media
      #   Whether or not media is banned in this chat
      #
      #   @return [Boolean]
      required :ban_media, Whopsdk::Internal::Type::Boolean

      # @!attribute ban_urls
      #   Whether or not URLs are banned in this chat
      #
      #   @return [Boolean]
      required :ban_urls, Whopsdk::Internal::Type::Boolean

      # @!attribute banned_words
      #   List of banned words in this chat
      #
      #   @return [Array<String>]
      required :banned_words, Whopsdk::Internal::Type::ArrayOf[String]

      # @!attribute experience
      #   The experience for this chat
      #
      #   @return [Whopsdk::Models::ChatChannelListResponse::Experience]
      required :experience, -> { Whopsdk::Models::ChatChannelListResponse::Experience }

      # @!attribute user_posts_cooldown_seconds
      #   The number of seconds a user needs to wait before posting again, if any
      #
      #   @return [Integer, nil]
      required :user_posts_cooldown_seconds, Integer, nil?: true

      # @!attribute who_can_post
      #   Who can post on this chat
      #
      #   @return [Symbol, Whopsdk::Models::WhoCanPost]
      required :who_can_post, enum: -> { Whopsdk::WhoCanPost }

      # @!attribute who_can_react
      #   Who can react on this chat
      #
      #   @return [Symbol, Whopsdk::Models::WhoCanReact]
      required :who_can_react, enum: -> { Whopsdk::WhoCanReact }

      # @!method initialize(id:, ban_media:, ban_urls:, banned_words:, experience:, user_posts_cooldown_seconds:, who_can_post:, who_can_react:)
      #   Represents a Chat feed
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param ban_media [Boolean] Whether or not media is banned in this chat
      #
      #   @param ban_urls [Boolean] Whether or not URLs are banned in this chat
      #
      #   @param banned_words [Array<String>] List of banned words in this chat
      #
      #   @param experience [Whopsdk::Models::ChatChannelListResponse::Experience] The experience for this chat
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The number of seconds a user needs to wait before posting again, if any
      #
      #   @param who_can_post [Symbol, Whopsdk::Models::WhoCanPost] Who can post on this chat
      #
      #   @param who_can_react [Symbol, Whopsdk::Models::WhoCanReact] Who can react on this chat

      # @see Whopsdk::Models::ChatChannelListResponse#experience
      class Experience < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID representing this experience
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The written name of the description.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   The experience for this chat
        #
        #   @param id [String] The unique ID representing this experience
        #
        #   @param name [String] The written name of the description.
      end
    end
  end
end
