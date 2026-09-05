# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#create
    class AIChatCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute message_text
      #   The text content of the first message to send to the AI agent.
      #
      #   @return [String]
      required :message_text, String

      # @!attribute agent_identifier
      #   The AI agent that handles an AI chat.
      #
      #   @return [Symbol, WhopSDK::Models::AIChatCreateParams::AgentIdentifier, nil]
      optional :agent_identifier, enum: -> { WhopSDK::AIChatCreateParams::AgentIdentifier }, nil?: true

      # @!attribute current_account_id
      #   The unique identifier of the account to set as context for the AI chat (e.g.,
      #   "biz_XXXXX").
      #
      #   @return [String, nil]
      optional :current_account_id, String, nil?: true

      # @!attribute message_attachments
      #   A list of previously uploaded file attachments to include with the first
      #   message.
      #
      #   @return [Array<WhopSDK::Models::AIChatCreateParams::MessageAttachment>, nil]
      optional :message_attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AIChatCreateParams::MessageAttachment] },
               nil?: true

      # @!attribute message_source
      #   The source of an AI chat message
      #
      #   @return [Symbol, WhopSDK::Models::AIChatCreateParams::MessageSource, nil]
      optional :message_source, enum: -> { WhopSDK::AIChatCreateParams::MessageSource }, nil?: true

      # @!attribute suggestion_type
      #   The type of suggestion prompt that was clicked, when message_source is
      #   'suggestion'.
      #
      #   @return [String, nil]
      optional :suggestion_type, String, nil?: true

      # @!attribute title
      #   An optional display title for the AI chat thread (e.g., "Help with billing").
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(message_text:, agent_identifier: nil, current_account_id: nil, message_attachments: nil, message_source: nil, suggestion_type: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AIChatCreateParams} for more details.
      #
      #   @param message_text [String] The text content of the first message to send to the AI agent.
      #
      #   @param agent_identifier [Symbol, WhopSDK::Models::AIChatCreateParams::AgentIdentifier, nil] The AI agent that handles an AI chat.
      #
      #   @param current_account_id [String, nil] The unique identifier of the account to set as context for the AI chat (e.g., "b
      #
      #   @param message_attachments [Array<WhopSDK::Models::AIChatCreateParams::MessageAttachment>, nil] A list of previously uploaded file attachments to include with the first message
      #
      #   @param message_source [Symbol, WhopSDK::Models::AIChatCreateParams::MessageSource, nil] The source of an AI chat message
      #
      #   @param suggestion_type [String, nil] The type of suggestion prompt that was clicked, when message_source is 'suggesti
      #
      #   @param title [String, nil] An optional display title for the AI chat thread (e.g., "Help with billing").
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The AI agent that handles an AI chat.
      module AgentIdentifier
        extend WhopSDK::Internal::Type::Enum

        GENERAL = :general
        SUPPORT = :support

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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

      # The source of an AI chat message
      module MessageSource
        extend WhopSDK::Internal::Type::Enum

        MANUAL = :manual
        SUGGESTION = :suggestion
        LINK = :link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
