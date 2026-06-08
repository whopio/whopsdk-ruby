# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#create_dispute_attachment
    class CardCreateDisputeAttachmentParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute dispute_id
      #
      #   @return [String]
      required :dispute_id, String

      # @!attribute attachment
      #
      #   @return [WhopSDK::Models::CardCreateDisputeAttachmentParams::Attachment]
      required :attachment, -> { WhopSDK::CardCreateDisputeAttachmentParams::Attachment }

      # @!method initialize(id:, dispute_id:, attachment:, request_options: {})
      #   @param id [String]
      #   @param dispute_id [String]
      #   @param attachment [WhopSDK::Models::CardCreateDisputeAttachmentParams::Attachment]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #   The direct upload ID returned when uploading the file to storage.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   @param id [String] The ID of an existing file object.
        #
        #   @param direct_upload_id [String] The direct upload ID returned when uploading the file to storage.
      end
    end
  end
end
