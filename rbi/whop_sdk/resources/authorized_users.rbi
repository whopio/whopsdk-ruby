# typed: strong

module WhopSDK
  module Resources
    class AuthorizedUsers
      # Retrieves a authorized user by ID
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AuthorizedUserRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      # Lists authorized users
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          role: T.nilable(WhopSDK::AuthorizedUserRoles::OrSymbol),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::AuthorizedUserListResponse
          ]
        )
      end
      def list(
        # The ID of the company to list authorized users for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Possible roles an authorized user can have
        role: nil,
        # Filter by the user ID to check if the user is an authorized user
        user_id: nil,
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
