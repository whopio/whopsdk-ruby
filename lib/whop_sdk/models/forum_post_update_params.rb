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

      # @!method initialize(attachments: nil, content: nil, is_pinned: nil, title: nil, request_options: {})
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
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ForumPostUpdateParams::Attachment} for more details.
        #
        #   Input for an attachment
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end
    end
  end
end
