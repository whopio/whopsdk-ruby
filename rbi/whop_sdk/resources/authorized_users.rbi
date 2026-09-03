# typed: strong

module WhopSDK
  module Resources
    class AuthorizedUsers
      # Add a new authorized user to a company.
      #
      # Required permissions:
      #
      # - `authorized_user:create`
      # - `member:email:read`
      sig do
        params(
          account_id: String,
          role: WhopSDK::AuthorizedUserCreateParams::Role::OrSymbol,
          user_id: String,
          elevation:
            T.nilable(WhopSDK::AuthorizedUserCreateParams::Elevation::OrHash),
          send_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AuthorizedUser)
      end
      def create(
        # The ID of the company to add the authorized user to.
        account_id:,
        # The role to assign to the authorized user within the company. Supported roles:
        # 'moderator', 'sales_manager'.
        role:,
        # The ID of the user to add as an authorized user.
        user_id:,
        # Re-authentication proof required to perform this sensitive action.
        elevation: nil,
        # Whether to send notification emails to the user on creation.
        send_emails: nil,
        request_options: {}
      )
      end

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
        ).returns(WhopSDK::AuthorizedUser)
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
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          last: Integer,
          role: WhopSDK::AuthorizedUserRoles::OrSymbol,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::AuthorizedUserListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the company to list authorized users for.
        account_id: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return authorized users created after this timestamp.
        created_after: nil,
        # Only return authorized users created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter authorized users by their assigned role within the company.
        role: nil,
        # Filter results to a specific user to check if they are an authorized team
        # member.
        user_id: nil,
        request_options: {}
      )
      end

      # Remove an authorized user from a company.
      #
      # Required permissions:
      #
      # - `authorized_user:delete`
      sig do
        params(
          id: String,
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ID of the authorized user or user to remove.
        id,
        # The ID of the company the authorized user belongs to. Optional if the authorized
        # user ID is provided.
        account_id: nil,
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
