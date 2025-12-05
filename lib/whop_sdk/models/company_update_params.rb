# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#update
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute logo
      #   The logo for the company in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID, nil]
      optional :logo, union: -> { WhopSDK::CompanyUpdateParams::Logo }, nil?: true

      # @!attribute title
      #   The title of the company
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(logo: nil, title: nil, request_options: {})
      #   @param logo [WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID, nil] The logo for the company in png, jpeg, or gif format
      #
      #   @param title [String, nil] The title of the company
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The logo for the company in png, jpeg, or gif format
      module Logo
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID }

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
          #   {WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID}
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
          #   {WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID} for more
          #   details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID)]
      end
    end
  end
end
