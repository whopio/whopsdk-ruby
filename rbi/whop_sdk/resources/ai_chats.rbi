# typed: strong

module WhopSDK
  module Resources
    class AIChats
      # Creates a new AI chat
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
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AIChat)
      end
      def create(
        # The text content of the first message sent in the chat
        message_text:,
        # The ID of the company to set as the current company in context for the AI chat
        current_company_id: nil,
        # The IDs of existing uploaded attachments to include in the first message to the
        # agent
        message_attachments: nil,
        # The title of the AI chat
        title: nil,
        request_options: {}
      )
      end

      # Fetches a single AI chat by ID
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AIChat)
      end
      def retrieve(
        # The ID of the AI chat
        id,
        request_options: {}
      )
      end

      # Updates an AI chat
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
        # The ID of the AI chat to update
        id,
        # The ID of the company to set as the current company in context for the AI chat
        current_company_id: nil,
        # The new title for the AI chat
        title: nil,
        request_options: {}
      )
      end

      # Fetches all AI chats for the current user
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

      # Deletes an AI chat
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
        # The ID of the AI chat to delete
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
