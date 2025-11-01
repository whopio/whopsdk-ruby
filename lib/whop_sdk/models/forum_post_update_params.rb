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
      #   @return [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithID>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[union: WhopSDK::ForumPostUpdateParams::Attachment] },
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
      #   @param attachments [Array<WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this post
      #
      #   @param content [String, nil] This is the main body of the post in Markdown format. Hidden if paywalled and us
      #
      #   @param is_pinned [Boolean, nil] Whether the post is pinned. You can only pin a top level posts (not comments).
      #
      #   @param title [String, nil] The title of the post. Only visible if paywalled.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Input for an attachment
      module Attachment
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::ForumPostUpdateParams::Attachment::AttachmentInputWithID }

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String]
          required :direct_upload_id, String

          # @!method initialize(direct_upload_id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID}
          #   for more details.
          #
          #   Input for an attachment
          #
          #   @param direct_upload_id [String] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithID} for
          #   more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::ForumPostUpdateParams::Attachment::AttachmentInputWithID)]
      end
    end
  end
end
