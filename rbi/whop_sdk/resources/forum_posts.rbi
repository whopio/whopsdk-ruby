# typed: strong

module WhopSDK
  module Resources
    # Forum posts
    class ForumPosts
      # Create a new forum post or comment within an experience. Supports text content,
      # attachments, polls, paywalling, and pinning. Pass experience_id 'public' with a
      # company_id to post to a company's public forum.
      #
      # Required permissions:
      #
      # - `forum:post:create`
      sig do
        params(
          experience_id: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::ForumPostCreateParams::Attachment::OrHash]
            ),
          company_id: T.nilable(String),
          content: T.nilable(String),
          is_mention: T.nilable(T::Boolean),
          parent_id: T.nilable(String),
          paywall_amount: T.nilable(Float),
          paywall_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          pinned: T.nilable(T::Boolean),
          poll: T.nilable(WhopSDK::ForumPostCreateParams::Poll::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ForumPost)
      end
      def create(
        # The unique identifier of the experience to create this post in. For example,
        # 'exp_xxxxx'. Pass 'public' along with company_id to automatically use the
        # company's public forum.
        experience_id:,
        # A list of file attachments to include with the post, such as images or videos.
        attachments: nil,
        # The unique identifier of the company whose public forum to post in. Required
        # when experience_id is 'public'. For example, 'biz_xxxxx'.
        company_id: nil,
        # The main body of the post in Markdown format. For example, 'Check out this
        # **update**'. Hidden if the post is paywalled and the viewer has not purchased
        # access.
        content: nil,
        # Whether to send this post as a mention notification to all users in the
        # experience who have mentions enabled.
        is_mention: nil,
        # The unique identifier of the parent post to comment on. Omit this field to
        # create a top-level post.
        parent_id: nil,
        # The price to unlock this post in the specified paywall currency. For example,
        # 5.00 for $5.00. When set, users must purchase access to view the post content.
        paywall_amount: nil,
        # The available currencies on the platform
        paywall_currency: nil,
        # Whether this post should be pinned to the top of the forum.
        pinned: nil,
        # A poll to attach to this post, allowing members to vote on options.
        poll: nil,
        # The title of the post, displayed prominently at the top. Required for paywalled
        # posts as it remains visible to non-purchasers.
        title: nil,
        # The visibility types for forum posts
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing forum post.
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
      def retrieve(
        # The unique identifier of the forum post to retrieve.
        id,
        request_options: {}
      )
      end

      # Edit the content, attachments, pinned status, or visibility of an existing forum
      # post or comment.
      sig do
        params(
          id: String,
          attachments:
            T.nilable(
              T::Array[WhopSDK::ForumPostUpdateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::ForumPostVisibilityType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::ForumPost)
      end
      def update(
        # The unique identifier of the forum post to update.
        id,
        # A replacement list of file attachments for this post, such as images or videos.
        attachments: nil,
        # The updated body of the post in Markdown format. For example, 'Check out this
        # **update**'. Hidden if the post is paywalled and the viewer has not purchased
        # access.
        content: nil,
        # Whether this post should be pinned to the top of the forum. Only top-level posts
        # can be pinned, not comments.
        is_pinned: nil,
        # The updated title of the post, displayed prominently at the top. Required for
        # paywalled posts as it remains visible to non-purchasers.
        title: nil,
        # The visibility types for forum posts
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of forum posts within a specific experience, with
      # optional filtering by parent post or pinned status.
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
        # The unique identifier of the experience to list forum posts for.
        experience_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of a parent post to list comments for. When set, returns
        # replies to that post.
        parent_id: nil,
        # Whether to filter for only pinned posts. Set to true to return only pinned
        # posts.
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
