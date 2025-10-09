# frozen_string_literal: true

module Whopsdk
  module Resources
    class ChatChannels
      # Retrieves a chat channel
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
      # @return [Whopsdk::Models::ChatChannelRetrieveResponse]
      #
      # @see Whopsdk::Models::ChatChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["chat_channels/%1$s", id],
          model: Whopsdk::Models::ChatChannelRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists chat channels inside a company
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list chat channels for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_id [String, nil] If provided, only chat channels connected to this product are returned
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::ChatChannelListResponse, nil>]
      #
      # @see Whopsdk::Models::ChatChannelListParams
      def list(params)
        parsed, options = Whopsdk::ChatChannelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "chat_channels",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::ChatChannelListResponse,
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
