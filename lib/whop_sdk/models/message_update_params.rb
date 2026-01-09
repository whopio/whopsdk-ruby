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
      #   @return [Array<WhopSDK::Models::MessageUpdateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::MessageUpdateParams::Attachment] },
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
      #   @param attachments [Array<WhopSDK::Models::MessageUpdateParams::Attachment>, nil] The attachments for this message
      #
      #   @param content [String, nil] The content of the message in Markdown format
      #
      #   @param is_pinned [Boolean, nil] Whether this message is pinned
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
