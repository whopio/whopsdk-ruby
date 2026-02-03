# typed: strong

module WhopSDK
  module Resources
    class DmChannels
      # Creates a DM channel
      sig do
        params(
          with_user_ids: T::Array[String],
          company_id: T.nilable(String),
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::DmChannel)
      end
      def create(
        # The user ids to create a DM with. Can be email, username or user_id (tag)
        with_user_ids:,
        # The ID of the company to scope this DM channel to.
        company_id: nil,
        # The custom name for the DM channel
        custom_name: nil,
        request_options: {}
      )
      end

      # Retrieves a DM channel
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
        # The ID of the DM channel
        id,
        request_options: {}
      )
      end

      # Updates a DM channel
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
        # The ID of the DM channel to update
        id,
        # The custom name for the DM channel
        custom_name: nil,
        request_options: {}
      )
      end

      # Lists DM channels for the current user
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
        # Filter DM channels scoped to a specific company
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Deletes a DM channel
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
        # The ID of the DM channel to delete
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
