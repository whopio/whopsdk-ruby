# frozen_string_literal: true

module Whopsdk
  module Resources
    class Messages
      # Retrieves a message
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::MessageRetrieveResponse]
      #
      # @see Whopsdk::Models::MessageRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messages/%1$s", id],
          model: Whopsdk::Models::MessageRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists messages inside a channel
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(channel_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param channel_id [String] The ID of the channel or the experience ID to list messages for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::MessageListResponse, nil>]
      #
      # @see Whopsdk::Models::MessageListParams
      def list(params)
        parsed, options = Whopsdk::MessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messages",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::MessageListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
