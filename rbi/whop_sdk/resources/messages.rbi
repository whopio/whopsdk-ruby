# typed: strong

module WhopSDK
  module Resources
    # Messages
    class Messages
      # Send a new message in an experience chat, DM, or group chat channel. Supports
      # text content, attachments, polls, and replies.
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
              T::Array[WhopSDK::MessageCreateParams::Attachment::OrHash]
            ),
          auto_detect_links: T.nilable(T::Boolean),
          poll: T.nilable(WhopSDK::MessageCreateParams::Poll::OrHash),
          replying_to_message_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Message)
      end
      def create(
        # The unique identifier of the channel or experience to send the message in. For
        # example, 'exp_xxxxx' or 'feed_xxxxx'.
        channel_id:,
        # The body of the message in Markdown format. For example, 'Hello **world**'.
        content:,
        # A list of file attachments to include with the message, such as images or
        # videos.
        attachments: nil,
        # Automatically detect URLs in the message and generate link previews.
        auto_detect_links: nil,
        # A poll to attach to this message, allowing recipients to vote on options.
        poll: nil,
        # The unique identifier of the message this is replying to, creating a threaded
        # reply.
        replying_to_message_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing message.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Message)
      end
      def retrieve(
        # The unique identifier of the message to retrieve.
        id,
        request_options: {}
      )
      end

      # Edit the content, attachments, or pinned status of an existing message in an
      # experience chat, DM, or group chat channel.
      sig do
        params(
          id: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::MessageUpdateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Message)
      end
      def update(
        # The unique identifier of the message to update.
        id,
        # A replacement list of file attachments for this message, such as images or
        # videos.
        attachments: nil,
        # The updated body of the message in Markdown format. For example, 'Hello
        # **world**'.
        content: nil,
        # Whether this message should be pinned to the top of the channel.
        is_pinned: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of messages within a specific experience chat, DM, or
      # group chat channel, sorted by creation time.
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          channel_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MessageListResponse]
        )
      end
      def list(
        # The unique identifier of the channel or experience to list messages for.
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

      # Permanently delete a message from an experience chat, DM, or group chat channel.
      # Only the message author or a channel admin can delete a message.
      #
      # Required permissions:
      #
      # - `chat:message:create`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the message to delete.
        id,
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
