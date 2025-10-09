# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::ChatChannels#retrieve
    class ChatChannelRetrieveResponse < Whopsdk::Internal::Type::BaseModel
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

      # @!attribute experience
      #   The experience for this chat
      #
      #   @return [Whopsdk::Models::ChatChannelRetrieveResponse::Experience]
      required :experience, -> { Whopsdk::Models::ChatChannelRetrieveResponse::Experience }

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

      # @!method initialize(id:, ban_media:, ban_urls:, experience:, user_posts_cooldown_seconds:, who_can_post:, who_can_react:)
      #   Represents a Chat feed
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param ban_media [Boolean] Whether or not media is banned in this chat
      #
      #   @param ban_urls [Boolean] Whether or not URLs are banned in this chat
      #
      #   @param experience [Whopsdk::Models::ChatChannelRetrieveResponse::Experience] The experience for this chat
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The number of seconds a user needs to wait before posting again, if any
      #
      #   @param who_can_post [Symbol, Whopsdk::Models::WhoCanPost] Who can post on this chat
      #
      #   @param who_can_react [Symbol, Whopsdk::Models::WhoCanReact] Who can react on this chat

      # @see Whopsdk::Models::ChatChannelRetrieveResponse#experience
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
