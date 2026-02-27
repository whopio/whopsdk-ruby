# frozen_string_literal: true

module WhopSDK
  module Resources
    class DmChannels
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DmChannelCreateParams} for more details.
      #
      # Create a new DM channel between two or more users, optionally scoped to a
      # specific company. Returns the existing channel if one already exists.
      #
      # @overload create(with_user_ids:, company_id: nil, custom_name: nil, request_options: {})
      #
      # @param with_user_ids [Array<String>] The list of user identifiers to include in the DM channel. Each entry can be an
      #
      # @param company_id [String, nil] The unique identifier of the company to scope this DM channel to. When set, the
      #
      # @param custom_name [String, nil] A custom display name for the DM channel. For example, 'Project Discussion'.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmChannel]
      #
      # @see WhopSDK::Models::DmChannelCreateParams
      def create(params)
        parsed, options = WhopSDK::DmChannelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dm_channels",
          body: parsed,
          model: WhopSDK::DmChannel,
          options: options
        )
      end

      # Retrieves the details of an existing DM channel.
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmChannel]
      #
      # @see WhopSDK::Models::DmChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dm_channels/%1$s", id],
          model: WhopSDK::DmChannel,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DmChannelUpdateParams} for more details.
      #
      # Update the settings of an existing DM channel, such as its display name. Only an
      # admin of the channel can perform this action.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload update(id, custom_name: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel to update.
      #
      # @param custom_name [String, nil] A new custom display name for the DM channel. For example, 'Project Discussion'.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmChannel]
      #
      # @see WhopSDK::Models::DmChannelUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::DmChannelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["dm_channels/%1$s", id],
          body: parsed,
          model: WhopSDK::DmChannel,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DmChannelListParams} for more details.
      #
      # Returns a paginated list of DM channels for the currently authenticated user,
      # sorted by most recently active.
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, first: nil, last: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of a company to filter DM channels by. Only returns channe
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::DmChannelListResponse>]
      #
      # @see WhopSDK::Models::DmChannelListParams
      def list(params = {})
        parsed, options = WhopSDK::DmChannelListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "dm_channels",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DmChannelListResponse,
          options: options
        )
      end

      # Permanently delete a DM channel and all of its messages. Only an admin of the
      # channel can perform this action.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::DmChannelDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["dm_channels/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
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
