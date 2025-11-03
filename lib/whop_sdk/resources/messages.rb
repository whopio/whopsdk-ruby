# frozen_string_literal: true

module WhopSDK
  module Resources
    class Messages
      # Creates a new message
      #
      # Required permissions:
      #
      # - `chat:message:create`
      #
      # @overload create(channel_id:, content:, attachments: nil, poll: nil, request_options: {})
      #
      # @param channel_id [String] The ID of the channel or experience to send to.
      #
      # @param content [String] The content of the message in Markdown format.
      #
      # @param attachments [Array<WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::MessageCreateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this message, such as videos or images.
      #
      # @param poll [WhopSDK::Models::MessageCreateParams::Poll, nil] The poll for this message
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Message]
      #
      # @see WhopSDK::Models::MessageCreateParams
      def create(params)
        parsed, options = WhopSDK::MessageCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages",
          body: parsed,
          model: WhopSDK::Message,
          options: options
        )
      end

      # Retrieves a message
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the message
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Message]
      #
      # @see WhopSDK::Models::MessageRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messages/%1$s", id],
          model: WhopSDK::Message,
          options: params[:request_options]
        )
      end

      # Updates an existing message
      #
      # @overload update(id, attachments: nil, content: nil, is_pinned: nil, request_options: {})
      #
      # @param id [String] The ID of the message to update
      #
      # @param attachments [Array<WhopSDK::Models::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID, WhopSDK::Models::MessageUpdateParams::Attachment::AttachmentInputWithID>, nil] The attachments for this message
      #
      # @param content [String, nil] The content of the message in Markdown format
      #
      # @param is_pinned [Boolean, nil] Whether this message is pinned
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Message]
      #
      # @see WhopSDK::Models::MessageUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::MessageUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["messages/%1$s", id],
          body: parsed,
          model: WhopSDK::Message,
          options: options
        )
      end

      # Lists messages inside a channel
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(channel_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param channel_id [String] The ID of the channel or the experience ID to list messages for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MessageListResponse>]
      #
      # @see WhopSDK::Models::MessageListParams
      def list(params)
        parsed, options = WhopSDK::MessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messages",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::MessageListResponse,
          options: options
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
