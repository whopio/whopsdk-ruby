# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ai chats
    class AIChats
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AIChatCreateParams} for more details.
      #
      # Create a new AI chat thread and send the first message to the AI agent.
      #
      # Required permissions:
      #
      # - `ai_chat:create`
      #
      # @overload create(message_text:, current_company_id: nil, message_attachments: nil, message_source: nil, title: nil, request_options: {})
      #
      # @param message_text [String] The text content of the first message to send to the AI agent.
      #
      # @param current_company_id [String, nil] The unique identifier of the company to set as context for the AI chat (e.g., "b
      #
      # @param message_attachments [Array<WhopSDK::Models::AIChatCreateParams::MessageAttachment>, nil] A list of previously uploaded file attachments to include with the first message
      #
      # @param message_source [Symbol, WhopSDK::Models::AIChatCreateParams::MessageSource, nil] The source of an AI chat message
      #
      # @param title [String, nil] An optional display title for the AI chat thread (e.g., "Help with billing").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AIChat]
      #
      # @see WhopSDK::Models::AIChatCreateParams
      def create(params)
        parsed, options = WhopSDK::AIChatCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ai_chats",
          body: parsed,
          model: WhopSDK::AIChat,
          options: options
        )
      end

      # Retrieves the details of an existing AI chat.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the AI chat to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AIChat]
      #
      # @see WhopSDK::Models::AIChatRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ai_chats/%1$s", id],
          model: WhopSDK::AIChat,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AIChatUpdateParams} for more details.
      #
      # Update an AI chat's title or associated company context.
      #
      # Required permissions:
      #
      # - `ai_chat:update`
      #
      # @overload update(id, current_company_id: nil, title: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the AI chat to update (e.g., "ai_chat_XXXXX").
      #
      # @param current_company_id [String, nil] The unique identifier of the company to set as context for the AI chat (e.g., "b
      #
      # @param title [String, nil] The new display title for the AI chat thread (e.g., "Help with billing").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AIChat]
      #
      # @see WhopSDK::Models::AIChatUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AIChatUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ai_chats/%1$s", id],
          body: parsed,
          model: WhopSDK::AIChat,
          options: options
        )
      end

      # Returns a paginated list of AI chat threads for the current authenticated user.
      #
      # @overload list(after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AIChatListResponse>]
      #
      # @see WhopSDK::Models::AIChatListParams
      def list(params = {})
        parsed, options = WhopSDK::AIChatListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ai_chats",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AIChatListResponse,
          options: options
        )
      end

      # Delete an AI chat thread so it no longer appears in the user's chat list.
      #
      # Required permissions:
      #
      # - `ai_chat:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the AI chat to delete (e.g., "ai_chat_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AIChatDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ai_chats/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
