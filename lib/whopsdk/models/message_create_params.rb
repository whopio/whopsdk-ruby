# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Messages#create
    class MessageCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute content
      #   The content of the message in Markdown format.
      #
      #   @return [String]
      required :content, String

      # @!attribute attachments
      #   The attachments for this message, such as videos or images.
      #
      #   @return [Array<Whopsdk::Models::MessageCreateParams::Attachment>, nil]
      optional :attachments,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::MessageCreateParams::Attachment] },
               nil?: true

      # @!attribute channel_id
      #   The ID of the channel to send to.
      #
      #   @return [String, nil]
      optional :channel_id, String, nil?: true

      # @!attribute experience_id
      #   The ID of the chat experience to send the message in.
      #
      #   @return [String, nil]
      optional :experience_id, String, nil?: true

      # @!attribute poll
      #   The poll for this message
      #
      #   @return [Whopsdk::Models::MessageCreateParams::Poll, nil]
      optional :poll, -> { Whopsdk::MessageCreateParams::Poll }, nil?: true

      # @!method initialize(content:, attachments: nil, channel_id: nil, experience_id: nil, poll: nil, request_options: {})
      #   @param content [String] The content of the message in Markdown format.
      #
      #   @param attachments [Array<Whopsdk::Models::MessageCreateParams::Attachment>, nil] The attachments for this message, such as videos or images.
      #
      #   @param channel_id [String, nil] The ID of the channel to send to.
      #
      #   @param experience_id [String, nil] The ID of the chat experience to send the message in.
      #
      #   @param poll [Whopsdk::Models::MessageCreateParams::Poll, nil] The poll for this message
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      class Attachment < Whopsdk::Internal::Type::BaseModel
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
        #   {Whopsdk::Models::MessageCreateParams::Attachment} for more details.
        #
        #   Input for an attachment
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end

      class Poll < Whopsdk::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll. Must have sequential IDs starting from 1
        #
        #   @return [Array<Whopsdk::Models::MessageCreateParams::Poll::Option>]
        required :options, -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::MessageCreateParams::Poll::Option] }

        # @!method initialize(options:)
        #   The poll for this message
        #
        #   @param options [Array<Whopsdk::Models::MessageCreateParams::Poll::Option>] The options for the poll. Must have sequential IDs starting from 1

        class Option < Whopsdk::Internal::Type::BaseModel
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
