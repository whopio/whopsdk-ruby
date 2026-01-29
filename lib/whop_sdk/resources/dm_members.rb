# frozen_string_literal: true

module WhopSDK
  module Resources
    class DmMembers
      # Adds a user to a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload create(channel_id:, user_id:, request_options: {})
      #
      # @param channel_id [String] The ID of the DM channel to add the member to
      #
      # @param user_id [String] The ID of the user to add to the channel
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMemberCreateResponse]
      #
      # @see WhopSDK::Models::DmMemberCreateParams
      def create(params)
        parsed, options = WhopSDK::DmMemberCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dm_members",
          body: parsed,
          model: WhopSDK::Models::DmMemberCreateResponse,
          options: options
        )
      end

      # Retrieves a DM channel member
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the DM channel member
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMemberRetrieveResponse]
      #
      # @see WhopSDK::Models::DmMemberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dm_members/%1$s", id],
          model: WhopSDK::Models::DmMemberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates a DM channel member's settings
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload update(id, notification_preference: nil, status: nil, request_options: {})
      #
      # @param id [String] The ID of the DM channel member to update
      #
      # @param notification_preference [Symbol, WhopSDK::Models::DmMemberUpdateParams::NotificationPreference, nil] The notification preferences for a DMs feed member
      #
      # @param status [Symbol, WhopSDK::Models::DmMemberUpdateParams::Status, nil] The statuses of a DMs feed member
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMemberUpdateResponse]
      #
      # @see WhopSDK::Models::DmMemberUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::DmMemberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["dm_members/%1$s", id],
          body: parsed,
          model: WhopSDK::Models::DmMemberUpdateResponse,
          options: options
        )
      end

      # Lists members of a DM channel
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload list(channel_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param channel_id [String] The ID of the DM channel to list members for
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
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::DmMemberListResponse>]
      #
      # @see WhopSDK::Models::DmMemberListParams
      def list(params)
        parsed, options = WhopSDK::DmMemberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dm_members",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DmMemberListResponse,
          options: options
        )
      end

      # Removes a user from a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the DM channel member to remove
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::DmMemberDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["dm_members/%1$s", id],
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
