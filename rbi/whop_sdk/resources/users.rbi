# typed: strong

module WhopSDK
  module Resources
    # Users
    class Users
      # Retrieves the details of an existing user.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def retrieve(
        # The unique identifier or username of the user.
        id,
        request_options: {}
      )
      end

      # Search for users by name or username, ranked by social proximity to the
      # authenticated user.
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::UserListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Search term to filter by name or username.
        query: nil,
        request_options: {}
      )
      end

      # Check whether a user has access to a specific resource, and return their access
      # level.
      sig do
        params(
          resource_id: String,
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserCheckAccessResponse)
      end
      def check_access(
        # The unique identifier of the resource to check access for. Accepts a company,
        # product, or experience identifier.
        resource_id,
        # The unique identifier or username of the user.
        id:,
        request_options: {}
      )
      end

      # Update the currently authenticated user's profile.
      #
      # Required permissions:
      #
      # - `user:profile:update`
      sig do
        params(
          bio: T.nilable(String),
          name: T.nilable(String),
          profile_picture:
            T.nilable(WhopSDK::UserUpdateProfileParams::ProfilePicture::OrHash),
          username: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update_profile(
        # A short biography displayed on the user's public profile.
        bio: nil,
        # The user's display name shown on their public profile. Maximum 100 characters.
        name: nil,
        # The user's profile picture image attachment.
        profile_picture: nil,
        # The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
        # characters.
        username: nil,
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
