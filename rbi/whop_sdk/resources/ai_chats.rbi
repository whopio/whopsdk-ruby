# typed: strong

module WhopSDK
  module Resources
    # Ai chats
    class AIChats
      # Create a new AI chat thread and send the first message to the AI agent.
      #
      # Required permissions:
      #
      # - `ai_chat:create`
      sig do
        params(
          message_text: String,
          current_company_id: T.nilable(String),
          message_attachments:
            T.nilable(
              T::Array[WhopSDK::AIChatCreateParams::MessageAttachment::OrHash]
            ),
          message_source:
            T.nilable(WhopSDK::AIChatCreateParams::MessageSource::OrSymbol),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AIChat)
      end
      def create(
        # The text content of the first message to send to the AI agent.
        message_text:,
        # The unique identifier of the company to set as context for the AI chat (e.g.,
        # "biz_XXXXX").
        current_company_id: nil,
        # A list of previously uploaded file attachments to include with the first
        # message.
        message_attachments: nil,
        # The source of an AI chat message
        message_source: nil,
        # An optional display title for the AI chat thread (e.g., "Help with billing").
        title: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing AI chat.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AIChat)
      end
      def retrieve(
        # The unique identifier of the AI chat to retrieve.
        id,
        request_options: {}
      )
      end

      # Update an AI chat's title or associated company context.
      #
      # Required permissions:
      #
      # - `ai_chat:update`
      sig do
        params(
          id: String,
          current_company_id: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AIChat)
      end
      def update(
        # The unique identifier of the AI chat to update (e.g., "ai_chat_XXXXX").
        id,
        # The unique identifier of the company to set as context for the AI chat (e.g.,
        # "biz_XXXXX").
        current_company_id: nil,
        # The new display title for the AI chat thread (e.g., "Help with billing").
        title: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of AI chat threads for the current authenticated user.
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AIChatListResponse]
        )
      end
      def list(
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

      # Delete an AI chat thread so it no longer appears in the user's chat list.
      #
      # Required permissions:
      #
      # - `ai_chat:delete`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the AI chat to delete (e.g., "ai_chat_XXXXX").
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
