# frozen_string_literal: true

module WhopSDK
  module Resources
    class ChatChannels
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ChatChannelRetrieveParams} for more details.
      #
      # Retrieves a chat channel
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the chat channel to fetch, it can be an experience ID or a chat channe
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
      # Updates a chat channel
      #
      # Required permissions:
      #
      # - `chat:moderate`
      #
      # @overload update(id, ban_media: nil, ban_urls: nil, banned_words: nil, user_posts_cooldown_seconds: nil, who_can_post: nil, who_can_react: nil, request_options: {})
      #
      # @param id [String] The ID of the chat channel to update. Can be an experience ID or a chat feed ext
      #
      # @param ban_media [Boolean, nil] Whether media uploads are banned in this chat
      #
      # @param ban_urls [Boolean, nil] Whether URLs are banned in this chat
      #
      # @param banned_words [Array<String>, nil] List of banned words for this chat
      #
      # @param user_posts_cooldown_seconds [Integer, nil] The cooldown period in seconds between user posts
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
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ChatChannelListResponse>]
      #
      # @see WhopSDK::Models::ChatChannelListParams
      def list(params)
        parsed, options = WhopSDK::ChatChannelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "chat_channels",
          query: parsed,
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
