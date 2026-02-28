# typed: strong

module WhopSDK
  module Resources
    # Dm channels
    class DmChannels
      # Create a new DM channel between two or more users, optionally scoped to a
      # specific company. Returns the existing channel if one already exists.
      sig do
        params(
          with_user_ids: T::Array[String],
          company_id: T.nilable(String),
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmChannel)
      end
      def create(
        # The list of user identifiers to include in the DM channel. Each entry can be an
        # email, username, or user ID (e.g. 'user_xxxxx').
        with_user_ids:,
        # The unique identifier of the company to scope this DM channel to. When set, the
        # channel is visible only within that company context.
        company_id: nil,
        # A custom display name for the DM channel. For example, 'Project Discussion'.
        custom_name: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing DM channel.
      #
      # Required permissions:
      #
      # - `dms:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmChannel)
      end
      def retrieve(
        # The unique identifier of the DM channel to retrieve.
        id,
        request_options: {}
      )
      end

      # Update the settings of an existing DM channel, such as its display name. Only an
      # admin of the channel can perform this action.
      #
      # Required permissions:
      #
      # - `dms:channel:manage`
      sig do
        params(
          id: String,
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmChannel)
      end
      def update(
        # The unique identifier of the DM channel to update.
        id,
        # A new custom display name for the DM channel. For example, 'Project Discussion'.
        custom_name: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of DM channels for the currently authenticated user,
      # sorted by most recently active.
      #
      # Required permissions:
      #
      # - `dms:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::DmChannelListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of a company to filter DM channels by. Only returns
        # channels scoped to this company.
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Permanently delete a DM channel and all of its messages. Only an admin of the
      # channel can perform this action.
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
        # The unique identifier of the DM channel to delete.
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
