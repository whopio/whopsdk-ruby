# typed: strong

module Whopsdk
  module Resources
    class Messages
      # Creates a new message
      #
      # Required permissions:
      #
      # - `chat:message:create`
      sig do
        params(
          channel_id: String,
          content: String,
          attachments:
            T.nilable(
              T::Array[Whopsdk::MessageCreateParams::Attachment::OrHash]
            ),
          poll: T.nilable(Whopsdk::MessageCreateParams::Poll::OrHash),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Message)
      end
      def create(
        # The ID of the channel or experience to send to.
        channel_id:,
        # The content of the message in Markdown format.
        content:,
        # The attachments for this message, such as videos or images.
        attachments: nil,
        # The poll for this message
        poll: nil,
        request_options: {}
      )
      end

      # Retrieves a message
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Message)
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
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[Whopsdk::Models::MessageListResponse]
        )
      end
      def list(
        # The ID of the channel or the experience ID to list messages for
        channel_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction of the sort.
        direction: nil,
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
