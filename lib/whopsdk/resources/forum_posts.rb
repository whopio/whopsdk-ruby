# frozen_string_literal: true

module Whopsdk
  module Resources
    class ForumPosts
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::ForumPostCreateParams} for more details.
      #
      # Create a new forum post
      #
      # Required permissions:
      #
      # - `forum:post:create`
      #
      # @overload create(experience_id:, attachments: nil, content: nil, is_mention: nil, parent_id: nil, paywall_amount: nil, paywall_currency: nil, pinned: nil, poll: nil, title: nil, request_options: {})
      #
      # @param experience_id [String] The experience to create this post in
      #
      # @param attachments [Array<Whopsdk::Models::ForumPostCreateParams::Attachment>, nil] The attachments for this post
      #
      # @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      # @param is_mention [Boolean, nil] This is used to determine if the post should be sent as a 'mention' notification
      #
      # @param parent_id [String, nil] The ID of the parent post. Set it to the ID of the post you want to comment on o
      #
      # @param paywall_amount [Float, nil] The amount to paywall this post by. A paywalled post requires the user to purcha
      #
      # @param paywall_currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      # @param pinned [Boolean, nil] Whether the post should be pinned
      #
      # @param poll [Whopsdk::Models::ForumPostCreateParams::Poll, nil] The poll for this post
      #
      # @param title [String, nil] The title of the post. Only visible if paywalled.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::ForumPost, nil]
      #
      # @see Whopsdk::Models::ForumPostCreateParams
      def create(params)
        parsed, options = Whopsdk::ForumPostCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "forum_posts",
          body: parsed,
          model: Whopsdk::ForumPost,
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::ForumPost, nil]
      #
      # @see Whopsdk::Models::ForumPostRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["forum_posts/%1$s", id],
          model: Whopsdk::ForumPost,
          options: params[:request_options]
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::ForumPostListResponse, nil>]
      #
      # @see Whopsdk::Models::ForumPostListParams
      def list(params)
        parsed, options = Whopsdk::ForumPostListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "forum_posts",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::ForumPostListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
