# frozen_string_literal: true

module WhopSDK
  module Resources
    class ForumPosts
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumPostCreateParams} for more details.
      #
      # Create a new forum post
      #
      # Required permissions:
      #
      # - `forum:post:create`
      #
      # @overload create(experience_id:, attachments: nil, content: nil, is_mention: nil, parent_id: nil, paywall_amount: nil, paywall_currency: nil, pinned: nil, poll: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param experience_id [String] The experience to create this post in
      #
      # @param attachments [Array<WhopSDK::Models::ForumPostCreateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::ForumPostCreateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this post
      #
      # @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      # @param is_mention [Boolean, nil] This is used to determine if the post should be sent as a 'mention' notification
      #
      # @param parent_id [String, nil] The ID of the parent post. Set it to the ID of the post you want to comment on o
      #
      # @param paywall_amount [Float, nil] The amount to paywall this post by. A paywalled post requires the user to purcha
      #
      # @param paywall_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param pinned [Boolean, nil] Whether the post should be pinned
      #
      # @param poll [WhopSDK::Models::ForumPostCreateParams::Poll, nil] The poll for this post
      #
      # @param title [String, nil] The title of the post. Only visible if paywalled.
      #
      # @param visibility [Symbol, WhopSDK::Models::ForumPostCreateParams::Visibility, nil] The visibility types for forum posts
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

      # Retrieves a forum post by ID
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the forum post
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
      # Update an existing forum post
      #
      # @overload update(id, attachments: nil, content: nil, is_pinned: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The ID of the forum post to update
      #
      # @param attachments [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this post
      #
      # @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      # @param is_pinned [Boolean, nil] Whether the post is pinned. You can only pin a top level posts (not comments).
      #
      # @param title [String, nil] The title of the post. Only visible if paywalled.
      #
      # @param visibility [Symbol, WhopSDK::Models::ForumPostUpdateParams::Visibility, nil] The visibility types for forum posts
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

      # Lists forum posts
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload list(experience_id:, after: nil, before: nil, first: nil, last: nil, parent_id: nil, pinned: nil, request_options: {})
      #
      # @param experience_id [String] The ID of the experience to list forum posts for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param parent_id [String, nil] The ID of the parent post to list forum post comments for
      #
      # @param pinned [Boolean, nil] Set to true to only return pinned posts
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ForumPostListResponse>]
      #
      # @see WhopSDK::Models::ForumPostListParams
      def list(params)
        parsed, options = WhopSDK::ForumPostListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "forum_posts",
          query: parsed,
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
