# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#list
    class AIChatListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the ai chat.
      #
      #   @return [String]
      required :id, String

      # @!attribute blended_token_usage
      #   The total number of tokens consumed across all messages in this conversation.
      #
      #   @return [String]
      required :blended_token_usage, String

      # @!attribute created_at
      #   The datetime the ai chat was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute last_message_at
      #   The timestamp of the most recent message in this conversation. Null if no
      #   messages have been sent yet.
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute message_count
      #   The total number of messages exchanged in this conversation.
      #
      #   @return [Integer]
      required :message_count, Integer

      # @!attribute title
      #   A short descriptive title for this AI chat conversation. Null if no title has
      #   been set.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The datetime the ai chat was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who owns this AI chat conversation.
      #
      #   @return [WhopSDK::Models::AIChatListResponse::User]
      required :user, -> { WhopSDK::Models::AIChatListResponse::User }

      # @!method initialize(id:, blended_token_usage:, created_at:, last_message_at:, message_count:, title:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AIChatListResponse} for more details.
      #
      #   An AI-powered chat conversation belonging to a user, with optional scheduled
      #   automation.
      #
      #   @param id [String] The unique identifier for the ai chat.
      #
      #   @param blended_token_usage [String] The total number of tokens consumed across all messages in this conversation.
      #
      #   @param created_at [Time] The datetime the ai chat was created.
      #
      #   @param last_message_at [Time, nil] The timestamp of the most recent message in this conversation. Null if no messag
      #
      #   @param message_count [Integer] The total number of messages exchanged in this conversation.
      #
      #   @param title [String, nil] A short descriptive title for this AI chat conversation. Null if no title has be
      #
      #   @param updated_at [Time] The datetime the ai chat was last updated.
      #
      #   @param user [WhopSDK::Models::AIChatListResponse::User] The user who owns this AI chat conversation.

      # @see WhopSDK::Models::AIChatListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The user who owns this AI chat conversation.
        #
        #   @param id [String] The unique identifier for the user.
      end
    end
  end
end
