# frozen_string_literal: true

module Whopsdk
  module Resources
    class Reactions
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::ReactionCreateParams} for more details.
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Reaction]
      #
      # @see Whopsdk::Models::ReactionCreateParams
      def create(params)
        parsed, options = Whopsdk::ReactionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "reactions",
          body: parsed,
          model: Whopsdk::Reaction,
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Reaction]
      #
      # @see Whopsdk::Models::ReactionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["reactions/%1$s", id],
          model: Whopsdk::Reaction,
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
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::ReactionListResponse>]
      #
      # @see Whopsdk::Models::ReactionListParams
      def list(params)
        parsed, options = Whopsdk::ReactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "reactions",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::ReactionListResponse,
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
