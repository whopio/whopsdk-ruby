# typed: strong

module WhopSDK
  module Resources
    class ChatChannels
      # Retrieves the details of an existing chat channel.
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
        # The unique identifier of the chat channel or experience to retrieve.
        id,
        request_options: {}
      )
      end

      # Update moderation settings for a chat channel, such as who can post, banned
      # words, and media restrictions.
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
        # The unique identifier of the chat channel to update. Accepts either an
        # experience ID (e.g. 'exp_xxxxx') or a chat channel ID.
        id,
        # Whether media uploads such as images and videos are banned in this chat channel.
        ban_media: nil,
        # Whether URLs and links are banned from being posted in this chat channel.
        ban_urls: nil,
        # A list of words that are automatically blocked from messages in this chat
        # channel. For example, ['spam', 'scam'].
        banned_words: nil,
        # The minimum number of seconds a user must wait between sending messages in this
        # chat channel.
        user_posts_cooldown_seconds: nil,
        # Who can post on a chat feed
        who_can_post: nil,
        # Who can react on a chat feed
        who_can_react: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of chat channels within a specific company, with
      # optional filtering by product.
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
        # The unique identifier of the company to list chat channels for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of a product to filter by. When set, only chat channels
        # connected to this product are returned.
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
