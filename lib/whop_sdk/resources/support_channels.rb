# frozen_string_literal: true

module WhopSDK
  module Resources
    class SupportChannels
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SupportChannelCreateParams} for more details.
      #
      # Open a new support channel between a company team member and a customer. Returns
      # the existing channel if one already exists for that user.
      #
      # Required permissions:
      #
      # - `support_chat:create`
      #
      # @overload create(company_id:, user_id:, custom_name: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create the support channel in.
      #
      # @param user_id [String] The user ID (e.g. 'user_xxxxx') or username of the customer to open a support ch
      #
      # @param custom_name [String, nil] Optional custom display name for the support channel.
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

      # Retrieves the details of an existing support channel.
      #
      # Required permissions:
      #
      # - `support_chat:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the support channel to retrieve.
      #
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
      # Returns a paginated list of support channels for a specific company, with
      # optional filtering by resolution status and custom sorting.
      #
      # Required permissions:
      #
      # - `support_chat:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list support channels for.
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
      # @param open_ [Boolean, nil] Whether to filter by open or resolved support channels. Set to true to only retu
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
