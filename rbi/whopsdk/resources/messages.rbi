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
          content: String,
          attachments:
            T.nilable(
              T::Array[Whopsdk::MessageCreateParams::Attachment::OrHash]
            ),
          channel_id: T.nilable(String),
          experience_id: T.nilable(String),
          poll: T.nilable(Whopsdk::MessageCreateParams::Poll::OrHash),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Message)
      end
      def create(
        # The content of the message in Markdown format.
        content:,
        # The attachments for this message, such as videos or images.
        attachments: nil,
        # The ID of the channel to send to.
        channel_id: nil,
        # The ID of the chat experience to send the message in.
        experience_id: nil,
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
