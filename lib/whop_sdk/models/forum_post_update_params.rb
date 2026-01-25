# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#update
    class ForumPostUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachments
      #   The attachments for this post
      #
      #   @return [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ForumPostUpdateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   This is the main body of the post in Markdown format. Hidden if paywalled and
      #   user hasn't purchased access to it.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_pinned
      #   Whether the post is pinned. You can only pin a top level posts (not comments).
      #
      #   @return [Boolean, nil]
      optional :is_pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute title
      #   The title of the post. Only visible if paywalled.
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
      #   @param attachments [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment>, nil] The attachments for this post
      #
      #   @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      #   @param is_pinned [Boolean, nil] Whether the post is pinned. You can only pin a top level posts (not comments).
      #
      #   @param title [String, nil] The title of the post. Only visible if paywalled.
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
