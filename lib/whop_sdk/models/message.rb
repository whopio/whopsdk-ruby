# frozen_string_literal: true

module WhopSDK
  module Models
    class Message < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute mentions
      #   A list of user IDs that are explicitly mentioned in this message.
      #
      #   @return [Array<String>]
      required :mentions, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute mentions_everyone
      #   Whether the message includes an @everyone mention that notifies all channel
      #   members.
      #
      #   @return [Boolean]
      required :mentions_everyone, WhopSDK::Internal::Type::Boolean

      # @!attribute message_type
      #   The classification of this message: regular, system, or automated.
      #
      #   @return [Symbol, WhopSDK::Models::DmsPostTypes]
      required :message_type, enum: -> { WhopSDK::DmsPostTypes }

      # @!attribute poll
      #   A poll attached to this message. Null if the message does not contain a poll.
      #
      #   @return [WhopSDK::Models::Message::Poll, nil]
      required :poll, -> { WhopSDK::Message::Poll }, nil?: true

      # @!attribute poll_votes
      #   Aggregated reaction counts on this message, filtered to a specific reaction
      #   type.
      #
      #   @return [Array<WhopSDK::Models::Message::PollVote>]
      required :poll_votes, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::PollVote] }

      # @!attribute reaction_counts
      #   Aggregated reaction counts on this message, filtered to a specific reaction
      #   type.
      #
      #   @return [Array<WhopSDK::Models::Message::ReactionCount>]
      required :reaction_counts, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::ReactionCount] }

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
      #   @return [WhopSDK::Models::Message::User]
      required :user, -> { WhopSDK::Message::User }

      # @!attribute view_count
      #   The number of unique views this message has received. Null if view tracking is
      #   not enabled for this channel.
      #
      #   @return [Integer, nil]
      required :view_count, Integer, nil?: true

      # @!method initialize(id:, content:, created_at:, is_edited:, is_pinned:, mentions:, mentions_everyone:, message_type:, poll:, poll_votes:, reaction_counts:, replying_to_message_id:, updated_at:, user:, view_count:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Message}
      #   for more details.
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
      #   @param mentions [Array<String>] A list of user IDs that are explicitly mentioned in this message.
      #
      #   @param mentions_everyone [Boolean] Whether the message includes an @everyone mention that notifies all channel memb
      #
      #   @param message_type [Symbol, WhopSDK::Models::DmsPostTypes] The classification of this message: regular, system, or automated.
      #
      #   @param poll [WhopSDK::Models::Message::Poll, nil] A poll attached to this message. Null if the message does not contain a poll.
      #
      #   @param poll_votes [Array<WhopSDK::Models::Message::PollVote>] Aggregated reaction counts on this message, filtered to a specific reaction type
      #
      #   @param reaction_counts [Array<WhopSDK::Models::Message::ReactionCount>] Aggregated reaction counts on this message, filtered to a specific reaction type
      #
      #   @param replying_to_message_id [String, nil] The unique identifier of the message this post is replying to. Null if this is n
      #
      #   @param updated_at [Time] The timestamp when this message was last modified.
      #
      #   @param user [WhopSDK::Models::Message::User] The user who authored this message.
      #
      #   @param view_count [Integer, nil] The number of unique views this message has received. Null if view tracking is n

      # @see WhopSDK::Models::Message#poll
      class Poll < WhopSDK::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll
        #
        #   @return [Array<WhopSDK::Models::Message::Poll::Option>, nil]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::Poll::Option] }, nil?: true

        # @!method initialize(options:)
        #   A poll attached to this message. Null if the message does not contain a poll.
        #
        #   @param options [Array<WhopSDK::Models::Message::Poll::Option>, nil] The options for the poll

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

      # @see WhopSDK::Models::Message#user
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
