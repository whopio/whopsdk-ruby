# frozen_string_literal: true

module WhopSDK
  module Resources
    class Messages
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MessageCreateParams} for more details.
      #
      # Send a new message in an experience chat, DM, or group chat channel. Supports
      # text content, attachments, polls, and replies.
      #
      # Required permissions:
      #
      # - `chat:message:create`
      #
      # @overload create(channel_id:, content:, attachments: nil, auto_detect_links: nil, poll: nil, replying_to_message_id: nil, request_options: {})
      #
      # @param channel_id [String] The unique identifier of the channel or experience to send the message in. For e
      #
      # @param content [String] The body of the message in Markdown format. For example, 'Hello **world**'.
      #
      # @param attachments [Array<WhopSDK::Models::MessageCreateParams::Attachment>, nil] A list of file attachments to include with the message, such as images or videos
      #
      # @param auto_detect_links [Boolean, nil] Automatically detect URLs in the message and generate link previews.
      #
      # @param poll [WhopSDK::Models::MessageCreateParams::Poll, nil] A poll to attach to this message, allowing recipients to vote on options.
      #
      # @param replying_to_message_id [String, nil] The unique identifier of the message this is replying to, creating a threaded re
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

      # Retrieves the details of an existing message.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the message to retrieve.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MessageUpdateParams} for more details.
      #
      # Edit the content, attachments, or pinned status of an existing message in an
      # experience chat, DM, or group chat channel.
      #
      # @overload update(id, attachments: nil, content: nil, is_pinned: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the message to update.
      #
      # @param attachments [Array<WhopSDK::Models::MessageUpdateParams::Attachment>, nil] A replacement list of file attachments for this message, such as images or video
      #
      # @param content [String, nil] The updated body of the message in Markdown format. For example,
      # 'Hello \*_world_
      #
      # @param is_pinned [Boolean, nil] Whether this message should be pinned to the top of the channel.
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

      # Returns a paginated list of messages within a specific experience chat, DM, or
      # group chat channel, sorted by creation time.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(channel_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param channel_id [String] The unique identifier of the channel or experience to list messages for.
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

      # Permanently delete a message from an experience chat, DM, or group chat channel.
      # Only the message author or a channel admin can delete a message.
      #
      # Required permissions:
      #
      # - `chat:message:create`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the message to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::MessageDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["messages/%1$s", id],
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
