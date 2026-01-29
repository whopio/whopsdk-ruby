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
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AIChatCreateResponse)
      end
      def create(
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
        ).returns(WhopSDK::Models::AIChatRetrieveResponse)
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
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AIChatUpdateResponse)
      end
      def update(
        # The ID of the AI chat to update
        id,
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
