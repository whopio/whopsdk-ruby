# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#update
    class MessageUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachments
      #   The attachments for this message
      #
      #   @return [Array<WhopSDK::Models::MessageUpdateParams::Attachment::DirectUploadID, WhopSDK::Models::MessageUpdateParams::Attachment::ID>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[union: WhopSDK::MessageUpdateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   The content of the message in Markdown format
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_pinned
      #   Whether this message is pinned
      #
      #   @return [Boolean, nil]
      optional :is_pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(attachments: nil, content: nil, is_pinned: nil, request_options: {})
      #   @param attachments [Array<WhopSDK::Models::MessageUpdateParams::Attachment::DirectUploadID, WhopSDK::Models::MessageUpdateParams::Attachment::ID>, nil] The attachments for this message
      #
      #   @param content [String, nil] The content of the message in Markdown format
      #
      #   @param is_pinned [Boolean, nil] Whether this message is pinned
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Input for an attachment
      module Attachment
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::MessageUpdateParams::Attachment::DirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::MessageUpdateParams::Attachment::ID }

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String]
          required :direct_upload_id, String

          # @!method initialize(direct_upload_id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::MessageUpdateParams::Attachment::DirectUploadID} for more
          #   details.
          #
          #   Input for an attachment
          #
          #   @param direct_upload_id [String] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class ID < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::MessageUpdateParams::Attachment::ID} for more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::MessageUpdateParams::Attachment::DirectUploadID, WhopSDK::Models::MessageUpdateParams::Attachment::ID)]
      end
    end
  end
end
