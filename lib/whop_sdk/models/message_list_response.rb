# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#list
    class MessageListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute content
      #   The message content formatted as Markdown. Null if the message has no text
      #   content.
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The timestamp when this message was originally created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_edited
      #   Whether the message content has been edited after it was originally sent.
      #
      #   @return [Boolean]
      required :is_edited, WhopSDK::Internal::Type::Boolean

      # @!attribute is_pinned
      #   Whether this message is pinned to the top of the channel for easy access.
      #
      #   @return [Boolean]
      required :is_pinned, WhopSDK::Internal::Type::Boolean

      # @!attribute message_type
      #   The classification of this message: regular, system, or automated.
      #
      #   @return [Symbol, WhopSDK::Models::DmsPostTypes]
      required :message_type, enum: -> { WhopSDK::DmsPostTypes }

      # @!attribute poll
      #   A poll attached to this message. Null if the message does not contain a poll.
      #
      #   @return [WhopSDK::Models::MessageListResponse::Poll, nil]
      required :poll, -> { WhopSDK::Models::MessageListResponse::Poll }, nil?: true

      # @!attribute poll_votes
      #   Aggregated reaction counts on this message, filtered to a specific reaction
      #   type.
      #
      #   @return [Array<WhopSDK::Models::MessageListResponse::PollVote>]
      required :poll_votes,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::PollVote] }

      # @!attribute reaction_counts
      #   Aggregated reaction counts on this message, filtered to a specific reaction
      #   type.
      #
      #   @return [Array<WhopSDK::Models::MessageListResponse::ReactionCount>]
      required :reaction_counts,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::ReactionCount] }

      # @!attribute replying_to_message_id
      #   The unique identifier of the message this post is replying to. Null if this is
      #   not a reply.
      #
      #   @return [String, nil]
      required :replying_to_message_id, String, nil?: true

      # @!attribute updated_at
      #   The timestamp when this message was last modified.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who authored this message.
      #
      #   @return [WhopSDK::Models::MessageListResponse::User]
      required :user, -> { WhopSDK::Models::MessageListResponse::User }

      # @!attribute view_count
      #   The number of unique views this message has received. Null if view tracking is
      #   not enabled for this channel.
      #
      #   @return [Integer, nil]
      required :view_count, Integer, nil?: true

      # @!method initialize(id:, content:, created_at:, is_edited:, is_pinned:, message_type:, poll:, poll_votes:, reaction_counts:, replying_to_message_id:, updated_at:, user:, view_count:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MessageListResponse} for more details.
      #
      #   A message sent within an experience chat, direct message, or group chat.
      #
      #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param content [String, nil] The message content formatted as Markdown. Null if the message has no text conte
      #
      #   @param created_at [Time] The timestamp when this message was originally created.
      #
      #   @param is_edited [Boolean] Whether the message content has been edited after it was originally sent.
      #
      #   @param is_pinned [Boolean] Whether this message is pinned to the top of the channel for easy access.
      #
      #   @param message_type [Symbol, WhopSDK::Models::DmsPostTypes] The classification of this message: regular, system, or automated.
      #
      #   @param poll [WhopSDK::Models::MessageListResponse::Poll, nil] A poll attached to this message. Null if the message does not contain a poll.
      #
      #   @param poll_votes [Array<WhopSDK::Models::MessageListResponse::PollVote>] Aggregated reaction counts on this message, filtered to a specific reaction type
      #
      #   @param reaction_counts [Array<WhopSDK::Models::MessageListResponse::ReactionCount>] Aggregated reaction counts on this message, filtered to a specific reaction type
      #
      #   @param replying_to_message_id [String, nil] The unique identifier of the message this post is replying to. Null if this is n
      #
      #   @param updated_at [Time] The timestamp when this message was last modified.
      #
      #   @param user [WhopSDK::Models::MessageListResponse::User] The user who authored this message.
      #
      #   @param view_count [Integer, nil] The number of unique views this message has received. Null if view tracking is n

      # @see WhopSDK::Models::MessageListResponse#poll
      class Poll < WhopSDK::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll
        #
        #   @return [Array<WhopSDK::Models::MessageListResponse::Poll::Option>, nil]
        required :options,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::Poll::Option] },
                 nil?: true

        # @!method initialize(options:)
        #   A poll attached to this message. Null if the message does not contain a poll.
        #
        #   @param options [Array<WhopSDK::Models::MessageListResponse::Poll::Option>, nil] The options for the poll

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the poll option.
          #
          #   @return [String]
          required :id, String

          # @!attribute text
          #   The text of the poll option
          #
          #   @return [String]
          required :text, String

          # @!method initialize(id:, text:)
          #   Represents a single poll option
          #
          #   @param id [String] The unique identifier for the poll option.
          #
          #   @param text [String] The text of the poll option
        end
      end

      class PollVote < WhopSDK::Internal::Type::BaseModel
        # @!attribute count
        #   The number of users who reacted
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute option_id
        #   The reaction that was used
        #
        #   @return [String, nil]
        required :option_id, String, nil?: true

        # @!method initialize(count:, option_id:)
        #   Represents a reaction count for a feed post
        #
        #   @param count [Integer] The number of users who reacted
        #
        #   @param option_id [String, nil] The reaction that was used
      end

      class ReactionCount < WhopSDK::Internal::Type::BaseModel
        # @!attribute count
        #   The number of users who reacted
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute emoji
        #   The emoji that was used in shortcode format (:heart:)
        #
        #   @return [String, nil]
        required :emoji, String, nil?: true

        # @!method initialize(count:, emoji:)
        #   Represents a reaction count for a feed post
        #
        #   @param count [Integer] The number of users who reacted
        #
        #   @param emoji [String, nil] The emoji that was used in shortcode format (:heart:)
      end

      # @see WhopSDK::Models::MessageListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who authored this message.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
