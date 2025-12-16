# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#update
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute banner_image
      #   The banner image for the company in png or jpeg format
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithID, nil]
      optional :banner_image, union: -> { WhopSDK::CompanyUpdateParams::BannerImage }, nil?: true

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The logo for the company in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID, nil]
      optional :logo, union: -> { WhopSDK::CompanyUpdateParams::Logo }, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #   Includes: order confirmations, payment failures, refund notifications, upcoming
      #   renewals, and membership cancelations/expirations. When disabled, the platform
      #   is responsible for handling these communications.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute title
      #   The title of the company
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(banner_image: nil, business_type: nil, industry_type: nil, logo: nil, send_customer_emails: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyUpdateParams} for more details.
      #
      #   @param banner_image [WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithID, nil] The banner image for the company in png or jpeg format
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID, nil] The logo for the company in png, jpeg, or gif format
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @param title [String, nil] The title of the company
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The banner image for the company in png or jpeg format
      module BannerImage
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::CompanyUpdateParams::BannerImage::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::CompanyUpdateParams::BannerImage::AttachmentInputWithID }

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
          #   {WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithDirectUploadID}
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
          #   {WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithID} for
          #   more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::BannerImage::AttachmentInputWithID)]
      end

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
