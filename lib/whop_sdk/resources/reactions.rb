# frozen_string_literal: true

module WhopSDK
  module Resources
    class Reactions
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ReactionCreateParams} for more details.
      #
      # Add an emoji reaction or poll vote to a message or forum post. In forums, the
      # reaction is always a like.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload create(resource_id:, emoji: nil, poll_option_id: nil, request_options: {})
      #
      # @param resource_id [String] The unique identifier of the message or forum post to react to.
      #
      # @param emoji [String, nil] The emoji to react with, in shortcode or unicode format. For example, ':heart:'
      #
      # @param poll_option_id [String, nil] The unique identifier of a poll option to vote for. Only valid when the target m
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

      # Retrieves the details of an existing reaction.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the reaction to retrieve.
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

      # Returns a paginated list of emoji reactions on a specific message or forum post,
      # sorted by most recent.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload list(resource_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param resource_id [String] The unique identifier of the message or forum post to list reactions for.
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
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "reactions",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ReactionListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ReactionDeleteParams} for more details.
      #
      # Remove an emoji reaction from a message or forum post. Only the reaction author
      # or a channel admin can remove a reaction.
      #
      # Required permissions:
      #
      # - `chat:read`
      #
      # @overload delete(id, emoji: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the reaction to remove, or the identifier of the messag
      #
      # @param emoji [String, nil] The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::ReactionDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::ReactionDeleteParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["reactions/%1$s", id],
          query: query,
          model: WhopSDK::Internal::Type::Boolean,
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
