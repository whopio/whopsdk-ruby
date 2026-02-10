# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#update
    class ForumPostUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachments
      #   A replacement list of file attachments for this post, such as images or videos.
      #
      #   @return [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ForumPostUpdateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   The updated body of the post in Markdown format. For example, 'Check out this
      #   **update**'. Hidden if the post is paywalled and the viewer has not purchased
      #   access.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_pinned
      #   Whether this post should be pinned to the top of the forum. Only top-level posts
      #   can be pinned, not comments.
      #
      #   @return [Boolean, nil]
      optional :is_pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute title
      #   The updated title of the post, displayed prominently at the top. Required for
      #   paywalled posts as it remains visible to non-purchasers.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   The visibility types for forum posts
      #
      #   @return [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil]
      optional :visibility, enum: -> { WhopSDK::ForumPostVisibilityType }, nil?: true

      # @!method initialize(attachments: nil, content: nil, is_pinned: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumPostUpdateParams} for more details.
      #
      #   @param attachments [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment>, nil] A replacement list of file attachments for this post, such as images or videos.
      #
      #   @param content [String, nil] The updated body of the post in Markdown format. For example, 'Check out this
      #   \*\*
      #
      #   @param is_pinned [Boolean, nil] Whether this post should be pinned to the top of the forum. Only top-level posts
      #
      #   @param title [String, nil] The updated title of the post, displayed prominently at the top. Required for pa
      #
      #   @param visibility [Symbol, WhopSDK::Models::ForumPostVisibilityType, nil] The visibility types for forum posts
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Input for an attachment
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
