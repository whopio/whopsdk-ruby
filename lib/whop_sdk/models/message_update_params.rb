# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#update
    class MessageUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute attachments
      #   A replacement list of file attachments for this message, such as images or
      #   videos.
      #
      #   @return [Array<WhopSDK::Models::MessageUpdateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::MessageUpdateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   The updated body of the message in Markdown format. For example, 'Hello
      #   **world**'.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute is_pinned
      #   Whether this message should be pinned to the top of the channel.
      #
      #   @return [Boolean, nil]
      optional :is_pinned, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(attachments: nil, content: nil, is_pinned: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MessageUpdateParams} for more details.
      #
      #   @param attachments [Array<WhopSDK::Models::MessageUpdateParams::Attachment>, nil] A replacement list of file attachments for this message, such as images or video
      #
      #   @param content [String, nil] The updated body of the message in Markdown format. For example,
      #   'Hello \*_world_
      #
      #   @param is_pinned [Boolean, nil] Whether this message should be pinned to the top of the channel.
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
