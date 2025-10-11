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
      # @return [Whopsdk::Models::ChatChannel]
      #
      # @see Whopsdk::Models::ChatChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["chat_channels/%1$s", id],
          model: Whopsdk::ChatChannel,
          options: params[:request_options]
        )
      end

      # Updates a chat channel
      #
      # Required permissions:
      #
      # - `chat:moderate`
      #
      # @overload update(id, ban_media: nil, ban_urls: nil, banned_words: nil, user_posts_cooldown_seconds: nil, who_can_post: nil, who_can_react: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param ban_media [Boolean, nil] Whether media uploads are banned in this chat
      #
      # @param ban_urls [Boolean, nil] Whether URLs are banned in this chat
      #
      # @param banned_words [Array<String>, nil] List of banned words for this chat
      #
      # @param user_posts_cooldown_seconds [Integer, nil] The cooldown period in seconds between user posts
      #
      # @param who_can_post [Symbol, Whopsdk::Models::WhoCanPost, nil] Who can post on a chat feed
      #
      # @param who_can_react [Symbol, Whopsdk::Models::WhoCanReact, nil] Who can react on a chat feed
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::ChatChannel]
      #
      # @see Whopsdk::Models::ChatChannelUpdateParams
      def update(id, params = {})
        parsed, options = Whopsdk::ChatChannelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["chat_channels/%1$s", id],
          body: parsed,
          model: Whopsdk::ChatChannel,
          options: options
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
