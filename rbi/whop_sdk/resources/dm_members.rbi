# typed: strong

module WhopSDK
  module Resources
    class DmMembers
      # Adds a user to a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      sig do
        params(
          channel_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmMember)
      end
      def create(
        # The ID of the DM channel to add the member to
        channel_id:,
        # The ID of the user to add to the channel
        user_id:,
        request_options: {}
      )
      end

      # Retrieves a DM channel member
      #
      # Required permissions:
      #
      # - `dms:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmMember)
      end
      def retrieve(
        # The ID of the DM channel member
        id,
        request_options: {}
      )
      end

      # Updates a DM channel member's settings
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      sig do
        params(
          id: String,
          notification_preference:
            T.nilable(WhopSDK::DmFeedMemberNotificationPreferences::OrSymbol),
          status: T.nilable(WhopSDK::DmFeedMemberStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmMember)
      end
      def update(
        # The ID of the DM channel member to update
        id,
        # The notification preferences for a DMs feed member
        notification_preference: nil,
        # The statuses of a DMs feed member
        status: nil,
        request_options: {}
      )
      end

      # Lists members of a DM channel
      #
      # Required permissions:
      #
      # - `dms:read`
      sig do
        params(
          channel_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::DmMemberListResponse]
        )
      end
      def list(
        # The ID of the DM channel to list members for
        channel_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Removes a user from a DM channel
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ID of the DM channel member to remove
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
