# frozen_string_literal: true

module WhopSDK
  module Resources
    class DmChannels
      # Creates a DM channel
      #
      # @overload create(with_user_ids:, company_id: nil, custom_name: nil, request_options: {})
      #
      # @param with_user_ids [Array<String>] The user ids to create a DM with. Can be email, username or user_id (tag)
      #
      # @param company_id [String, nil] The ID of the company to scope this DM channel to.
      #
      # @param custom_name [String, nil] The custom name for the DM channel
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

      # Retrieves a DM channel
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the DM channel
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

      # Updates a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload update(id, custom_name: nil, request_options: {})
      #
      # @param id [String] The ID of the DM channel to update
      #
      # @param custom_name [String, nil] The custom name for the DM channel
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

      # Lists DM channels for the current user
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
      # @param company_id [String, nil] Filter DM channels scoped to a specific company
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
        @client.request(
          method: :get,
          path: "dm_channels",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DmChannelListResponse,
          options: options
        )
      end

      # Deletes a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the DM channel to delete
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
