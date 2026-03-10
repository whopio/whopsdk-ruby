# typed: strong

module WhopSDK
  module Resources
    # Dm members
    class DmMembers
      # Add a new user to an existing DM channel. Only an admin of the channel can add
      # members.
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
        # The unique identifier of the DM channel to add the new member to.
        channel_id:,
        # The unique identifier of the user to add to the DM channel. For example,
        # 'user_xxxxx'.
        user_id:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing DM member.
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
        # The unique identifier of the DM channel member to retrieve.
        id,
        request_options: {}
      )
      end

      # Update a DM channel member's settings, such as their notification preferences or
      # membership status.
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
        # The unique identifier of the DM channel member to update.
        id,
        # The notification preferences for a DMs feed member
        notification_preference: nil,
        # The statuses of a DMs feed member
        status: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of members in a specific DM channel, sorted by the date
      # they were added.
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
        # The unique identifier of the DM channel to list members for.
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

      # Remove a user from a DM channel. An admin can remove any member, and a member
      # can remove themselves.
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
        # The unique identifier of the DM channel member to remove.
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
