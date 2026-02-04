# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#create
    class AIChatCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute message_text
      #   The text content of the first message sent in the chat
      #
      #   @return [String]
      required :message_text, String

      # @!attribute current_company_id
      #   The ID of the company to set as the current company in context for the AI chat
      #
      #   @return [String, nil]
      optional :current_company_id, String, nil?: true

      # @!attribute message_attachments
      #   The IDs of existing uploaded attachments to include in the first message to the
      #   agent
      #
      #   @return [Array<WhopSDK::Models::AIChatCreateParams::MessageAttachment>, nil]
      optional :message_attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AIChatCreateParams::MessageAttachment] },
               nil?: true

      # @!attribute title
      #   The title of the AI chat
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(message_text:, current_company_id: nil, message_attachments: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AIChatCreateParams} for more details.
      #
      #   @param message_text [String] The text content of the first message sent in the chat
      #
      #   @param current_company_id [String, nil] The ID of the company to set as the current company in context for the AI chat
      #
      #   @param message_attachments [Array<WhopSDK::Models::AIChatCreateParams::MessageAttachment>, nil] The IDs of existing uploaded attachments to include in the first message to the
      #
      #   @param title [String, nil] The title of the AI chat
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class MessageAttachment < WhopSDK::Internal::Type::BaseModel
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
