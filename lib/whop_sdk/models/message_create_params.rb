# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Messages#create
    class MessageCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute channel_id
      #   The unique identifier of the channel or experience to send the message in. For
      #   example, 'exp_xxxxx' or 'feed_xxxxx'.
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute content
      #   The body of the message in Markdown format. For example, 'Hello **world**'.
      #
      #   @return [String]
      required :content, String

      # @!attribute attachments
      #   A list of file attachments to include with the message, such as images or
      #   videos.
      #
      #   @return [Array<WhopSDK::Models::MessageCreateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::MessageCreateParams::Attachment] },
               nil?: true

      # @!attribute auto_detect_links
      #   Automatically detect URLs in the message and generate link previews.
      #
      #   @return [Boolean, nil]
      optional :auto_detect_links, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute poll
      #   A poll to attach to this message, allowing recipients to vote on options.
      #
      #   @return [WhopSDK::Models::MessageCreateParams::Poll, nil]
      optional :poll, -> { WhopSDK::MessageCreateParams::Poll }, nil?: true

      # @!attribute replying_to_message_id
      #   The unique identifier of the message this is replying to, creating a threaded
      #   reply.
      #
      #   @return [String, nil]
      optional :replying_to_message_id, String, nil?: true

      # @!method initialize(channel_id:, content:, attachments: nil, auto_detect_links: nil, poll: nil, replying_to_message_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MessageCreateParams} for more details.
      #
      #   @param channel_id [String] The unique identifier of the channel or experience to send the message in. For e
      #
      #   @param content [String] The body of the message in Markdown format. For example, 'Hello **world**'.
      #
      #   @param attachments [Array<WhopSDK::Models::MessageCreateParams::Attachment>, nil] A list of file attachments to include with the message, such as images or videos
      #
      #   @param auto_detect_links [Boolean, nil] Automatically detect URLs in the message and generate link previews.
      #
      #   @param poll [WhopSDK::Models::MessageCreateParams::Poll, nil] A poll to attach to this message, allowing recipients to vote on options.
      #
      #   @param replying_to_message_id [String, nil] The unique identifier of the message this is replying to, creating a threaded re
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

      class Poll < WhopSDK::Internal::Type::BaseModel
        # @!attribute options
        #   The options for the poll. Must have sequential IDs starting from 1
        #
        #   @return [Array<WhopSDK::Models::MessageCreateParams::Poll::Option>]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::MessageCreateParams::Poll::Option] }

        # @!method initialize(options:)
        #   A poll to attach to this message, allowing recipients to vote on options.
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
