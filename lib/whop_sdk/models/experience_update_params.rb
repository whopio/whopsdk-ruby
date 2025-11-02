# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#update
    class ExperienceUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_level
      #   The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      #
      #   @return [Symbol, WhopSDK::Models::ExperienceUpdateParams::AccessLevel, nil]
      optional :access_level, enum: -> { WhopSDK::ExperienceUpdateParams::AccessLevel }, nil?: true

      # @!attribute logo
      #   The logo for the experience
      #
      #   @return [WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithID, nil]
      optional :logo, union: -> { WhopSDK::ExperienceUpdateParams::Logo }, nil?: true

      # @!attribute name
      #   The name of the experience.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute order
      #   The order of the experience in the section.
      #
      #   @return [String, nil]
      optional :order, String, nil?: true

      # @!attribute section_id
      #   The ID of the section to update.
      #
      #   @return [String, nil]
      optional :section_id, String, nil?: true

      # @!method initialize(access_level: nil, logo: nil, name: nil, order: nil, section_id: nil, request_options: {})
      #   @param access_level [Symbol, WhopSDK::Models::ExperienceUpdateParams::AccessLevel, nil] The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      #
      #   @param logo [WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithID, nil] The logo for the experience
      #
      #   @param name [String, nil] The name of the experience.
      #
      #   @param order [String, nil] The order of the experience in the section.
      #
      #   @param section_id [String, nil] The ID of the section to update.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        PRIVATE = :private

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The logo for the experience
      module Logo
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::ExperienceUpdateParams::Logo::AttachmentInputWithID }

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
          #   {WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID}
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
          #   {WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithID} for more
          #   details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithID)]
      end
    end
  end
end
