# frozen_string_literal: true

module WhopSDK
  module Resources
    # Chat channels
    class ChatChannels
      # Retrieves the details of an existing chat channel.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the chat channel or experience to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ChatChannel]
      #
      # @see WhopSDK::Models::ChatChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["chat_channels/%1$s", id],
          model: WhopSDK::ChatChannel,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ChatChannelUpdateParams} for more details.
      #
      # Update moderation settings for a chat channel, such as who can post, banned
      # words, and media restrictions.
      #
      # Required permissions:
      #
      # - `chat:moderate`
      #
      # @overload update(id, ban_media: nil, ban_urls: nil, banned_words: nil, user_posts_cooldown_seconds: nil, who_can_post: nil, who_can_react: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the chat channel to update. Accepts either an experienc
      #
      # @param ban_media [Boolean, nil] Whether media uploads such as images and videos are banned in this chat channel.
      #
      # @param ban_urls [Boolean, nil] Whether URLs and links are banned from being posted in this chat channel.
      #
      # @param banned_words [Array<String>, nil] A list of words that are automatically blocked from messages in this chat channe
      #
      # @param user_posts_cooldown_seconds [Integer, nil] The minimum number of seconds a user must wait between sending messages in this
      #
      # @param who_can_post [Symbol, WhopSDK::Models::WhoCanPost, nil] Who can post on a chat feed
      #
      # @param who_can_react [Symbol, WhopSDK::Models::WhoCanReact, nil] Who can react on a chat feed
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ChatChannel]
      #
      # @see WhopSDK::Models::ChatChannelUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ChatChannelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["chat_channels/%1$s", id],
          body: parsed,
          model: WhopSDK::ChatChannel,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ChatChannelListParams} for more details.
      #
      # Returns a paginated list of chat channels within a specific company, with
      # optional filtering by product.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list chat channels for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_id [String, nil] The unique identifier of a product to filter by. When set, only chat channels co
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ChatChannelListResponse>]
      #
      # @see WhopSDK::Models::ChatChannelListParams
      def list(params)
        parsed, options = WhopSDK::ChatChannelListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "chat_channels",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ChatChannelListResponse,
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
