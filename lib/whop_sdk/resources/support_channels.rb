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
      # @overload create(account_id:, user_id:, custom_name: nil, notifications_enabled: nil, request_options: {})
      #
      # @param account_id [String] The unique identifier of the company to create the support channel in.
      #
      # @param user_id [String] The user ID (e.g. 'user_xxxxx') or username of the customer to open a support ch
      #
      # @param custom_name [String, nil] Optional custom display name for the support channel.
      #
      # @param notifications_enabled [Boolean, nil] Whether Whop app notifications are enabled for this support channel. Webhooks st
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
      # @overload list(account_id: nil, after: nil, before: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, view: nil, request_options: {})
      #
      # @param account_id [String] The unique identifier of the company to list support channels for. Includes chan
      #
      # @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for the results. Use 'asc' for oldest first or 'desc' for new
      #
      # @param first [Integer] Returns the first _n_ elements from the list.
      #
      # @param last [Integer] Returns the last _n_ elements from the list.
      #
      # @param open_ [Boolean] Whether to filter by open or resolved support channels. Set to true to only retu
      #
      # @param order [Symbol, WhopSDK::Models::SupportChannelListParams::Order] The field to sort the support channels by, such as creation date or last message
      #
      # @param view [Symbol, WhopSDK::Models::SupportChannelListParams::View] Filter support channels by the authenticated user's role. Defaults to admin. Whe
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::SupportChannelListResponse>]
      #
      # @see WhopSDK::Models::SupportChannelListParams
      def list(params = {})
        parsed, options = WhopSDK::SupportChannelListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "support_channels",
          query: query.transform_keys(open_: "open"),
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
