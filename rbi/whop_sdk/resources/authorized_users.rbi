# typed: strong

module WhopSDK
  module Resources
    # Authorized users
    class AuthorizedUsers
      # Retrieves the details of an existing authorized user.
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
      def retrieve(
        # The unique identifier of the authorized user to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of authorized team members for a company, with optional
      # filtering by user, role, and creation date.
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
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
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list authorized users for.
        company_id: nil,
        # Only return authorized users created after this timestamp.
        created_after: nil,
        # Only return authorized users created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Possible roles an authorized user can have
        role: nil,
        # Filter results to a specific user to check if they are an authorized team
        # member.
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
