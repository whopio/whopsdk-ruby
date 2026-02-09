# frozen_string_literal: true

module WhopSDK
  module Models
    class ChatChannel < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute ban_media
      #   Whether or not media is banned in this chat
      #
      #   @return [Boolean]
      required :ban_media, WhopSDK::Internal::Type::Boolean

      # @!attribute ban_urls
      #   Whether or not URLs are banned in this chat
      #
      #   @return [Boolean]
      required :ban_urls, WhopSDK::Internal::Type::Boolean

      # @!attribute banned_words
      #   List of banned words in this chat
      #
      #   @return [Array<String>]
      required :banned_words, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute experience
      #   The experience for this chat
      #
      #   @return [WhopSDK::Models::ChatChannel::Experience]
      required :experience, -> { WhopSDK::ChatChannel::Experience }

      # @!attribute user_posts_cooldown_seconds
      #   The number of seconds a user needs to wait before posting again, if any
      #
      #   @return [Integer, nil]
      required :user_posts_cooldown_seconds, Integer, nil?: true

      # @!attribute who_can_post
      #   Who can post on this chat
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPost]
      required :who_can_post, enum: -> { WhopSDK::WhoCanPost }

      # @!attribute who_can_react
      #   Who can react on this chat
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanReact]
      required :who_can_react, enum: -> { WhopSDK::WhoCanReact }

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
      #   @param experience [WhopSDK::Models::ChatChannel::Experience] The experience for this chat
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The number of seconds a user needs to wait before posting again, if any
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPost] Who can post on this chat
      #
      #   @param who_can_react [Symbol, WhopSDK::Models::WhoCanReact] Who can react on this chat

      # @see WhopSDK::Models::ChatChannel#experience
      class Experience < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the experience.
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
        #   @param id [String] The unique identifier for the experience.
        #
        #   @param name [String] The written name of the description.
      end
    end
  end
end
