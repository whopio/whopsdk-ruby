# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#list
    class MessageListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the resource.
      #
      #   @return [String]
      required :id, String

      # @!attribute content
      #   The content of the message in Markdown format
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The timestamp when the post was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_edited
      #   Whether the message has been edited
      #
      #   @return [Boolean]
      required :is_edited, WhopSDK::Internal::Type::Boolean

      # @!attribute is_pinned
      #   Whether this message is pinned
      #
      #   @return [Boolean]
      required :is_pinned, WhopSDK::Internal::Type::Boolean

      # @!attribute message_type
      #   The type of post
      #
      #   @return [Symbol, WhopSDK::Models::DmsPostTypes]
      required :message_type, enum: -> { WhopSDK::DmsPostTypes }

      # @!attribute poll
      #   The poll for this message
      #
      #   @return [WhopSDK::Models::MessageListResponse::Poll, nil]
      required :poll, -> { WhopSDK::Models::MessageListResponse::Poll }, nil?: true

      # @!attribute poll_votes
      #   The reaction counts for this message
      #
      #   @return [Array<WhopSDK::Models::MessageListResponse::PollVote>]
      required :poll_votes,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::PollVote] }

      # @!attribute reaction_counts
      #   The reaction counts for this message
      #
      #   @return [Array<WhopSDK::Models::MessageListResponse::ReactionCount>]
      required :reaction_counts,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::ReactionCount] }

      # @!attribute replying_to_message_id
      #   The ID of the message this is replying to, if applicable
      #
      #   @return [String, nil]
      required :replying_to_message_id, String, nil?: true

      # @!attribute updated_at
      #   The timestamp when the post was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who sent this message
      #
      #   @return [WhopSDK::Models::MessageListResponse::User]
      required :user, -> { WhopSDK::Models::MessageListResponse::User }

      # @!attribute view_count
      #   The number of times this message has been viewed
      #
      #   @return [Integer, nil]
      required :view_count, Integer, nil?: true

      # @!method initialize(id:, content:, created_at:, is_edited:, is_pinned:, message_type:, poll:, poll_votes:, reaction_counts:, replying_to_message_id:, updated_at:, user:, view_count:)
      #   Represents a message in a DM channel
      #
      #   @param id [String] The unique identifier of the resource.
      #
      #   @param content [String, nil] The content of the message in Markdown format
      #
      #   @param created_at [Time] The timestamp when the post was created
      #
      #   @param is_edited [Boolean] Whether the message has been edited
      #
      #   @param is_pinned [Boolean] Whether this message is pinned
      #
      #   @param message_type [Symbol, WhopSDK::Models::DmsPostTypes] The type of post
      #
      #   @param poll [WhopSDK::Models::MessageListResponse::Poll, nil] The poll for this message
      #
      #   @param poll_votes [Array<WhopSDK::Models::MessageListResponse::PollVote>] The reaction counts for this message
      #
      #   @param reaction_counts [Array<WhopSDK::Models::MessageListResponse::ReactionCount>] The reaction counts for this message
      #
      #   @param replying_to_message_id [String, nil] The ID of the message this is replying to, if applicable
      #
      #   @param updated_at [Time] The timestamp when the post was last updated
      #
      #   @param user [WhopSDK::Models::MessageListResponse::User] The user who sent this message
      #
      #   @param view_count [Integer, nil] The number of times this message has been viewed

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
        #   The poll for this message
        #
        #   @param options [Array<WhopSDK::Models::MessageListResponse::Poll::Option>, nil] The options for the poll

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the poll option
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
          #   @param id [String] The ID of the poll option
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
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who sent this message
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
