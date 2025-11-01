# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#create
    class MessageCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute channel_id
      #   The ID of the channel or experience to send to.
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute content
      #   The content of the message in Markdown format.
      #
      #   @return [String]
      required :content, String

      # @!attribute attachments
      #   The attachments for this message, such as videos or images.
      #
      #   @return [Array<WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithID>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[union: WhopSDK::MessageCreateParams::Attachment] },
               nil?: true

      # @!attribute poll
      #   The poll for this message
      #
      #   @return [WhopSDK::Models::MessageCreateParams::Poll, nil]
      optional :poll, -> { WhopSDK::MessageCreateParams::Poll }, nil?: true

      # @!method initialize(channel_id:, content:, attachments: nil, poll: nil, request_options: {})
      #   @param channel_id [String] The ID of the channel or experience to send to.
      #
      #   @param content [String] The content of the message in Markdown format.
      #
      #   @param attachments [Array<WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this message, such as videos or images.
      #
      #   @param poll [WhopSDK::Models::MessageCreateParams::Poll, nil] The poll for this message
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Input for an attachment
      module Attachment
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::MessageCreateParams::Attachment::AttachmentInputWithID }

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
          #   {WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID}
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
          #   {WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithID} for
          #   more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithID)]
      end

      class Poll < WhopSDK::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll. Must have sequential IDs starting from 1
        #
        #   @return [Array<WhopSDK::Models::MessageCreateParams::Poll::Option>]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::MessageCreateParams::Poll::Option] }

        # @!method initialize(options:)
        #   The poll for this message
        #
        #   @param options [Array<WhopSDK::Models::MessageCreateParams::Poll::Option>] The options for the poll. Must have sequential IDs starting from 1

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Sequential ID for the poll option (starting from '1')
          #
          #   @return [String]
          required :id, String

          # @!attribute text
          #   The text of the poll option
          #
          #   @return [String]
          required :text, String

          # @!method initialize(id:, text:)
          #   Input type for a single poll option
          #
          #   @param id [String] Sequential ID for the poll option (starting from '1')
          #
          #   @param text [String] The text of the poll option
        end
      end
    end
  end
end
