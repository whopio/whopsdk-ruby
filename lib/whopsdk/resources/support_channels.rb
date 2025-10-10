# frozen_string_literal: true

module Whopsdk
  module Resources
    class SupportChannels
      # Retrieves a support channel
      #
      # Required permissions:
      #
      # - `support_chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::SupportChannelRetrieveResponse]
      #
      # @see Whopsdk::Models::SupportChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["support_channels/%1$s", id],
          model: Whopsdk::Models::SupportChannelRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::SupportChannelListParams} for more details.
      #
      # Lists chat channels inside a company
      #
      # Required permissions:
      #
      # - `support_chat:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list chat channels for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param open_ [Boolean, nil] Filter for tickets where customer sent the last message (needs response) AND not
      #
      # @param order [Symbol, Whopsdk::Models::SupportChannelListParams::Order, nil] Sort options for message channels
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::SupportChannelListResponse, nil>]
      #
      # @see Whopsdk::Models::SupportChannelListParams
      def list(params)
        parsed, options = Whopsdk::SupportChannelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "support_channels",
          query: parsed.transform_keys(open_: "open"),
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::SupportChannelListResponse,
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
