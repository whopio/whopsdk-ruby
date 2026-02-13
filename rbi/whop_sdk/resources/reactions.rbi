# typed: strong

module WhopSDK
  module Resources
    class Reactions
      # Add an emoji reaction or poll vote to a message or forum post. In forums, the
      # reaction is always a like.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          resource_id: String,
          emoji: T.nilable(String),
          poll_option_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Reaction)
      end
      def create(
        # The unique identifier of the message or forum post to react to.
        resource_id:,
        # The emoji to react with, in shortcode or unicode format. For example, ':heart:'
        # or a unicode emoji. Ignored in forums where reactions are always likes.
        emoji: nil,
        # The unique identifier of a poll option to vote for. Only valid when the target
        # message or post contains a poll.
        poll_option_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing reaction.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Reaction)
      end
      def retrieve(
        # The unique identifier of the reaction to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of emoji reactions on a specific message or forum post,
      # sorted by most recent.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          resource_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ReactionListResponse]
        )
      end
      def list(
        # The unique identifier of the message or forum post to list reactions for.
        resource_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Remove an emoji reaction from a message or forum post. Only the reaction author
      # or a channel admin can remove a reaction.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          emoji: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the reaction to remove, or the identifier of the
        # message or forum post to remove a reaction from. When passing a message or post
        # ID, you must also provide the emoji argument.
        id,
        # The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
        # unicode emoji. Required when the id refers to a message or post instead of a
        # reaction.
        emoji: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
