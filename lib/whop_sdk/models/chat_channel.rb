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
      #   Whether media uploads such as images and videos are blocked in this chat.
      #
      #   @return [Boolean]
      required :ban_media, WhopSDK::Internal::Type::Boolean

      # @!attribute ban_urls
      #   Whether URL links are blocked from being posted in this chat.
      #
      #   @return [Boolean]
      required :ban_urls, WhopSDK::Internal::Type::Boolean

      # @!attribute banned_words
      #   A list of words that are automatically filtered from messages in this chat.
      #
      #   @return [Array<String>]
      required :banned_words, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute experience
      #   The experience this chat feed is attached to.
      #
      #   @return [WhopSDK::Models::ChatChannel::Experience]
      required :experience, -> { WhopSDK::ChatChannel::Experience }

      # @!attribute user_posts_cooldown_seconds
      #   The minimum number of seconds a user must wait between consecutive messages.
      #   Null if no cooldown is enforced.
      #
      #   @return [Integer, nil]
      required :user_posts_cooldown_seconds, Integer, nil?: true

      # @!attribute who_can_post
      #   The permission level controlling which users can send messages in this chat.
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPost]
      required :who_can_post, enum: -> { WhopSDK::WhoCanPost }

      # @!attribute who_can_react
      #   The permission level controlling which users can add reactions in this chat.
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanReact]
      required :who_can_react, enum: -> { WhopSDK::WhoCanReact }

      # @!method initialize(id:, ban_media:, ban_urls:, banned_words:, experience:, user_posts_cooldown_seconds:, who_can_post:, who_can_react:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ChatChannel} for more details.
      #
      #   A real-time chat feed attached to an experience, with configurable moderation
      #   and posting permissions.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param ban_media [Boolean] Whether media uploads such as images and videos are blocked in this chat.
      #
      #   @param ban_urls [Boolean] Whether URL links are blocked from being posted in this chat.
      #
      #   @param banned_words [Array<String>] A list of words that are automatically filtered from messages in this chat.
      #
      #   @param experience [WhopSDK::Models::ChatChannel::Experience] The experience this chat feed is attached to.
      #
      #   @param user_posts_cooldown_seconds [Integer, nil] The minimum number of seconds a user must wait between consecutive messages. Nul
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPost] The permission level controlling which users can send messages in this chat.
      #
      #   @param who_can_react [Symbol, WhopSDK::Models::WhoCanReact] The permission level controlling which users can add reactions in this chat.

      # @see WhopSDK::Models::ChatChannel#experience
      class Experience < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the experience.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The display name of this experience shown to users in the product navigation.
        #   Maximum 255 characters.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ChatChannel::Experience} for more details.
        #
        #   The experience this chat feed is attached to.
        #
        #   @param id [String] The unique identifier for the experience.
        #
        #   @param name [String] The display name of this experience shown to users in the product navigation. Ma
      end
    end
  end
end
