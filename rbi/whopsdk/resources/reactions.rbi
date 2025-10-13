# typed: strong

module Whopsdk
  module Resources
    class Reactions
      # Creates a new reaction
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          resource_id: String,
          emoji: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Reaction)
      end
      def create(
        # The ID of the post or message to react to.
        resource_id:,
        # The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
        # as everything will be :heart:
        emoji: nil,
        request_options: {}
      )
      end

      # Retrieves a reaction
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Reaction)
      end
      def retrieve(id, request_options: {})
      end

      # Lists reactions for a post or a message
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[Whopsdk::Models::ReactionListResponse]
        )
      end
      def list(
        # The ID of the post or message to list reactions for
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

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
