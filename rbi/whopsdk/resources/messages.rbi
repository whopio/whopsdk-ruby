# typed: strong

module Whopsdk
  module Resources
    class Messages
      # Retrieves a message
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::MessageRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      # Lists messages inside a channel
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          channel_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::MessageListResponse)
          ]
        )
      end
      def list(
        # The ID of the channel or the experience ID to list messages for
        channel_id:,
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
