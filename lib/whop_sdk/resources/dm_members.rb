# frozen_string_literal: true

module WhopSDK
  module Resources
    class DmMembers
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DmMemberCreateParams} for more details.
      #
      # Add a new user to an existing DM channel. Only an admin of the channel can add
      # members.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload create(channel_id:, user_id:, request_options: {})
      #
      # @param channel_id [String] The unique identifier of the DM channel to add the new member to.
      #
      # @param user_id [String] The unique identifier of the user to add to the DM channel. For example, 'user_x
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMember]
      #
      # @see WhopSDK::Models::DmMemberCreateParams
      def create(params)
        parsed, options = WhopSDK::DmMemberCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dm_members",
          body: parsed,
          model: WhopSDK::DmMember,
          options: options
        )
      end

      # Retrieves the details of an existing DM member.
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel member to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMember]
      #
      # @see WhopSDK::Models::DmMemberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dm_members/%1$s", id],
          model: WhopSDK::DmMember,
          options: params[:request_options]
        )
      end

      # Update a DM channel member's settings, such as their notification preferences or
      # membership status.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload update(id, notification_preference: nil, status: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel member to update.
      #
      # @param notification_preference [Symbol, WhopSDK::Models::DmFeedMemberNotificationPreferences, nil] The notification preferences for a DMs feed member
      #
      # @param status [Symbol, WhopSDK::Models::DmFeedMemberStatuses, nil] The statuses of a DMs feed member
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DmMember]
      #
      # @see WhopSDK::Models::DmMemberUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::DmMemberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["dm_members/%1$s", id],
          body: parsed,
          model: WhopSDK::DmMember,
          options: options
        )
      end

      # Returns a paginated list of members in a specific DM channel, sorted by the date
      # they were added.
      #
      # Required permissions:
      #
      # - `dms:read`
      #
      # @overload list(channel_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param channel_id [String] The unique identifier of the DM channel to list members for.
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
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "dm_members",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::DmMemberListResponse,
          options: options
        )
      end

      # Remove a user from a DM channel. An admin can remove any member, and a member
      # can remove themselves.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the DM channel member to remove.
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
