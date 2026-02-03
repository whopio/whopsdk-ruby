# frozen_string_literal: true

module WhopSDK
  module Resources
    class AIChats
      # Creates a new AI chat
      #
      # Required permissions:
      #
      # - `ai_chat:create`
      #
      # @overload create(title: nil, request_options: {})
      #
      # @param title [String, nil] The title of the AI chat
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AIChat]
      #
      # @see WhopSDK::Models::AIChatCreateParams
      def create(params = {})
        parsed, options = WhopSDK::AIChatCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ai_chats",
          body: parsed,
          model: WhopSDK::AIChat,
          options: options
        )
      end

      # Fetches a single AI chat by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the AI chat
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

      # Updates an AI chat
      #
      # Required permissions:
      #
      # - `ai_chat:update`
      #
      # @overload update(id, current_company_id: nil, title: nil, request_options: {})
      #
      # @param id [String] The ID of the AI chat to update
      #
      # @param current_company_id [String, nil] The ID of the company to set as the current company in context for the AI chat
      #
      # @param title [String, nil] The new title for the AI chat
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

      # Fetches all AI chats for the current user
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
        @client.request(
          method: :get,
          path: "ai_chats",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AIChatListResponse,
          options: options
        )
      end

      # Deletes an AI chat
      #
      # Required permissions:
      #
      # - `ai_chat:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the AI chat to delete
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
