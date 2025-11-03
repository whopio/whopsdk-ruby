# frozen_string_literal: true

module WhopSDK
  module Resources
    class Reactions
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ReactionCreateParams} for more details.
      #
      # Creates a new reaction
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload create(resource_id:, emoji: nil, request_options: {})
      #
      # @param resource_id [String] The ID of the post or message to react to.
      #
      # @param emoji [String, nil] The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums, a
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Reaction]
      #
      # @see WhopSDK::Models::ReactionCreateParams
      def create(params)
        parsed, options = WhopSDK::ReactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "reactions",
          body: parsed,
          model: WhopSDK::Reaction,
          options: options
        )
      end

      # Retrieves a reaction
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the reaction
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Reaction]
      #
      # @see WhopSDK::Models::ReactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["reactions/%1$s", id],
          model: WhopSDK::Reaction,
          options: params[:request_options]
        )
      end

      # Lists reactions for a post or a message
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(resource_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param resource_id [String] The ID of the post or message to list reactions for
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
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ReactionListResponse>]
      #
      # @see WhopSDK::Models::ReactionListParams
      def list(params)
        parsed, options = WhopSDK::ReactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "reactions",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ReactionListResponse,
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
