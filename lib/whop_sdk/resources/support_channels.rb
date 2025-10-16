# frozen_string_literal: true

module WhopSDK
  module Resources
    class SupportChannels
      # Create a new support channel for a user in a company. If one already exists, it
      # will return the existing one.
      #
      # Required permissions:
      #
      # - `support_chat:create`
      #
      # @overload create(company_id:, user_id:, request_options: {})
      #
      # @param company_id [String] The ID of the company to create the support chat in
      #
      # @param user_id [String] The ID of the user to create the support chat for
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SupportChannel]
      #
      # @see WhopSDK::Models::SupportChannelCreateParams
      def create(params)
        parsed, options = WhopSDK::SupportChannelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "support_channels",
          body: parsed,
          model: WhopSDK::SupportChannel,
          options: options
        )
      end

      # Retrieves a support channel
      #
      # Required permissions:
      #
      # - `support_chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SupportChannel]
      #
      # @see WhopSDK::Models::SupportChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["support_channels/%1$s", id],
          model: WhopSDK::SupportChannel,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SupportChannelListParams} for more details.
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
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param open_ [Boolean, nil] Filter for tickets where customer sent the last message (needs response) AND not
      #
      # @param order [Symbol, WhopSDK::Models::SupportChannelListParams::Order, nil] Sort options for message channels
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::SupportChannelListResponse>]
      #
      # @see WhopSDK::Models::SupportChannelListParams
      def list(params)
        parsed, options = WhopSDK::SupportChannelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "support_channels",
          query: parsed.transform_keys(open_: "open"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::SupportChannelListResponse,
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
