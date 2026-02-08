# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#create
    class AIChat < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the ai chat.
      #
      #   @return [String]
      required :id, String

      # @!attribute blended_token_usage
      #   The total number of tokens used in the chat
      #
      #   @return [String]
      required :blended_token_usage, String

      # @!attribute created_at
      #   The datetime the ai chat was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute last_message_at
      #   When the last message was sent
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute message_count
      #   The number of messages in the chat
      #
      #   @return [Integer]
      required :message_count, Integer

      # @!attribute title
      #   The title of the AI chat
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The datetime the ai chat was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who owns the AI chat
      #
      #   @return [WhopSDK::Models::AIChat::User]
      required :user, -> { WhopSDK::AIChat::User }

      # @!method initialize(id:, blended_token_usage:, created_at:, last_message_at:, message_count:, title:, updated_at:, user:)
      #   An AI chat conversation belonging to a user
      #
      #   @param id [String] The unique identifier for the ai chat.
      #
      #   @param blended_token_usage [String] The total number of tokens used in the chat
      #
      #   @param created_at [Time] The datetime the ai chat was created.
      #
      #   @param last_message_at [Time, nil] When the last message was sent
      #
      #   @param message_count [Integer] The number of messages in the chat
      #
      #   @param title [String, nil] The title of the AI chat
      #
      #   @param updated_at [Time] The datetime the ai chat was last updated.
      #
      #   @param user [WhopSDK::Models::AIChat::User] The user who owns the AI chat

      # @see WhopSDK::Models::AIChat#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The user who owns the AI chat
        #
        #   @param id [String] The unique identifier for the user.
      end
    end
  end
end
