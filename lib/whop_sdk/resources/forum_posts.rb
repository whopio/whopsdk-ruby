# frozen_string_literal: true

module WhopSDK
  module Resources
    class ForumPosts
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumPostCreateParams} for more details.
      #
      # Create a new forum post or comment within an experience. Supports text content,
      # attachments, polls, paywalling, and pinning. Pass experience_id 'public' with a
      # company_id to post to a company's public forum.
      #
      # Required permissions:
      #
      # - `forum:post:create`
      #
      # @overload create(experience_id:, attachments: nil, company_id: nil, content: nil, is_mention: nil, parent_id: nil, paywall_amount: nil, paywall_currency: nil, pinned: nil, poll: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param experience_id [String] The unique identifier of the experience to create this post in. For example, 'ex
      #
      # @param attachments [Array<WhopSDK::Models::ForumPostCreateParams::Attachment>, nil] A list of file attachments to include with the post, such as images or videos.
      #
      # @param company_id [String, nil] The unique identifier of the company whose public forum to post in. Required whe
      #
      # @param content [String, nil] The main body of the post in Markdown format. For example, 'Check out this
      # \*\*upd
      #
      # @param is_mention [Boolean, nil] Whether to send this post as a mention notification to all users in the experien
      #
      # @param parent_id [String, nil] The unique identifier of the parent post to comment on. Omit this field to creat
      #
      # @param paywall_amount [Float, nil] The price to unlock this post in the specified paywall currency. For example, 5.
      #
      # @param paywall_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param pinned [Boolean, nil] Whether this post should be pinned to the top of the forum.
      #
      # @param poll [WhopSDK::Models::ForumPostCreateParams::Poll, nil] A poll to attach to this post, allowing members to vote on options.
      #
      # @param title [String, nil] The title of the post, displayed prominently at the top. Required for paywalled
      #
      # @param visibility [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil] The visibility types for forum posts
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ForumPost]
      #
      # @see WhopSDK::Models::ForumPostCreateParams
      def create(params)
        parsed, options = WhopSDK::ForumPostCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "forum_posts",
          body: parsed,
          model: WhopSDK::ForumPost,
          options: options
        )
      end

      # Retrieves the details of an existing forum post.
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the forum post to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ForumPost]
      #
      # @see WhopSDK::Models::ForumPostRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["forum_posts/%1$s", id],
          model: WhopSDK::ForumPost,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumPostUpdateParams} for more details.
      #
      # Edit the content, attachments, pinned status, or visibility of an existing forum
      # post or comment.
      #
      # @overload update(id, attachments: nil, content: nil, is_pinned: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the forum post to update.
      #
      # @param attachments [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment>, nil] A replacement list of file attachments for this post, such as images or videos.
      #
      # @param content [String, nil] The updated body of the post in Markdown format. For example, 'Check out this
      # \*\*
      #
      # @param is_pinned [Boolean, nil] Whether this post should be pinned to the top of the forum. Only top-level posts
      #
      # @param title [String, nil] The updated title of the post, displayed prominently at the top. Required for pa
      #
      # @param visibility [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil] The visibility types for forum posts
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ForumPost]
      #
      # @see WhopSDK::Models::ForumPostUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ForumPostUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["forum_posts/%1$s", id],
          body: parsed,
          model: WhopSDK::ForumPost,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumPostListParams} for more details.
      #
      # Returns a paginated list of forum posts within a specific experience, with
      # optional filtering by parent post or pinned status.
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload list(experience_id:, after: nil, before: nil, first: nil, last: nil, parent_id: nil, pinned: nil, request_options: {})
      #
      # @param experience_id [String] The unique identifier of the experience to list forum posts for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param parent_id [String, nil] The unique identifier of a parent post to list comments for. When set, returns r
      #
      # @param pinned [Boolean, nil] Whether to filter for only pinned posts. Set to true to return only pinned posts
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ForumPostListResponse>]
      #
      # @see WhopSDK::Models::ForumPostListParams
      def list(params)
        parsed, options = WhopSDK::ForumPostListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "forum_posts",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ForumPostListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
