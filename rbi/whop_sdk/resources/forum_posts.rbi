# typed: strong

module WhopSDK
  module Resources
    class ForumPosts
      # Create a new forum post
      #
      # Required permissions:
      #
      # - `forum:post:create`
      sig do
        params(
          experience_id: String,
          attachments:
            T.nilable(
              T::Array[
                T.any(
                  WhopSDK::ForumPostCreateParams::Attachment::AttachmentInputWithDirectUploadID::OrHash,
                  WhopSDK::ForumPostCreateParams::Attachment::AttachmentInputWithID::OrHash
                )
              ]
            ),
          content: T.nilable(String),
          is_mention: T.nilable(T::Boolean),
          parent_id: T.nilable(String),
          paywall_amount: T.nilable(Float),
          paywall_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          pinned: T.nilable(T::Boolean),
          poll: T.nilable(WhopSDK::ForumPostCreateParams::Poll::OrHash),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ForumPost)
      end
      def create(
        # The experience to create this post in
        experience_id:,
        # The attachments for this post
        attachments: nil,
        # This is the main body of the post in Markdown format. Hidden if paywalled and
        # user hasn't purchased access to it.
        content: nil,
        # This is used to determine if the post should be sent as a 'mention' notification
        # to all of the users who are in the experience. This means that anyone with
        # 'mentions' enabled will receive a notification about this post.
        is_mention: nil,
        # The ID of the parent post. Set it to the ID of the post you want to comment on
        # or don't include it if its a top level post.
        parent_id: nil,
        # The amount to paywall this post by. A paywalled post requires the user to
        # purchase it in order to view its content.
        paywall_amount: nil,
        # The available currencies on the platform
        paywall_currency: nil,
        # Whether the post should be pinned
        pinned: nil,
        # The poll for this post
        poll: nil,
        # The title of the post. Only visible if paywalled.
        title: nil,
        request_options: {}
      )
      end

      # Retrieves a forum post by ID
      #
      # Required permissions:
      #
      # - `forum:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ForumPost)
      end
      def retrieve(id, request_options: {})
      end

      # Update an existing forum post
      sig do
        params(
          id: String,
          attachments:
            T.nilable(
              T::Array[
                T.any(
                  WhopSDK::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID::OrHash,
                  WhopSDK::ForumPostUpdateParams::Attachment::AttachmentInputWithID::OrHash
                )
              ]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ForumPost)
      end
      def update(
        id,
        # The attachments for this post
        attachments: nil,
        # This is the main body of the post in Markdown format. Hidden if paywalled and
        # user hasn't purchased access to it.
        content: nil,
        # Whether the post is pinned. You can only pin a top level posts (not comments).
        is_pinned: nil,
        # The title of the post. Only visible if paywalled.
        title: nil,
        request_options: {}
      )
      end

      # Lists forum posts
      #
      # Required permissions:
      #
      # - `forum:read`
      sig do
        params(
          experience_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          parent_id: T.nilable(String),
          pinned: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ForumPostListResponse]
        )
      end
      def list(
        # The ID of the experience to list forum posts for
        experience_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the parent post to list forum post comments for
        parent_id: nil,
        # Set to true to only return pinned posts
        pinned: nil,
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
