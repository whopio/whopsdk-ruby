# typed: strong

module WhopSDK
  module Resources
    class ChatChannels
      # Retrieves a chat channel
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ChatChannel)
      end
      def retrieve(
        # The ID of the chat channel to fetch, it can be an experience ID or a chat
        # channel ID
        id,
        request_options: {}
      )
      end

      # Updates a chat channel
      #
      # Required permissions:
      #
      # - `chat:moderate`
      sig do
        params(
          id: String,
          ban_media: T.nilable(T::Boolean),
          ban_urls: T.nilable(T::Boolean),
          banned_words: T.nilable(T::Array[String]),
          user_posts_cooldown_seconds: T.nilable(Integer),
          who_can_post: T.nilable(WhopSDK::WhoCanPost::OrSymbol),
          who_can_react: T.nilable(WhopSDK::WhoCanReact::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ChatChannel)
      end
      def update(
        # The ID of the chat channel to update. Can be an experience ID or a chat feed
        # external ID.
        id,
        # Whether media uploads are banned in this chat
        ban_media: nil,
        # Whether URLs are banned in this chat
        ban_urls: nil,
        # List of banned words for this chat
        banned_words: nil,
        # The cooldown period in seconds between user posts
        user_posts_cooldown_seconds: nil,
        # Who can post on a chat feed
        who_can_post: nil,
        # Who can react on a chat feed
        who_can_react: nil,
        request_options: {}
      )
      end

      # Lists chat channels inside a company
      #
      # Required permissions:
      #
      # - `chat:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::ChatChannelListResponse
          ]
        )
      end
      def list(
        # The ID of the company to list chat channels for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # If provided, only chat channels connected to this product are returned
        product_id: nil,
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
