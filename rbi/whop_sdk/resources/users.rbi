# typed: strong

module WhopSDK
  module Resources
    class Users
      # Retrieves a user's public profile by user\_ tag, username, or 'me'.
      sig do
        params(
          id: String,
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def retrieve(
        # The ID of the user, which will look like user\_******\*******, a username, or
        # 'me'.
        id,
        # When set, returns the user's account-specific profile overrides for this
        # account.
        account_id: nil,
        request_options: {}
      )
      end

      # Updates a user. A user token updates their own global profile; an API key
      # updates the user's account-specific profile override (account_id required).
      sig do
        params(
          id: String,
          account_id: String,
          bio: String,
          name: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update(
        # Path param: The ID of the user, which will look like user\_******\*******, a
        # username, or 'me'.
        id,
        # Query param: The account whose profile override to update. Required for API key
        # callers.
        account_id: nil,
        # Body param
        bio: nil,
        # Body param
        name: nil,
        request_options: {}
      )
      end

      # Search for users by name or username, ranked by social proximity to the
      # authenticated user. Returns the user's most recently followed users when no
      # query is given.
      sig do
        params(
          after: String,
          before: String,
          first: Integer,
          last: Integer,
          query: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::User])
      end
      def list(
        # A cursor; returns users after this position.
        after: nil,
        # A cursor; returns users before this position.
        before: nil,
        # The number of users to return (max 50).
        first: nil,
        # The number of users to return from the end of the range.
        last: nil,
        # A search term to filter users by name or username.
        query: nil,
        request_options: {}
      )
      end

      # Checks whether a user has access to a company, product, or experience the caller
      # can reach.
      sig do
        params(
          resource_id: String,
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserCheckAccessResponse)
      end
      def check_access(
        # A company (biz*), product (prod*), or experience (exp\_) ID.
        resource_id,
        # The user\_ tag or username to check access for.
        id:,
        request_options: {}
      )
      end

      # Updates the authenticated user's global profile. Not available to API keys.
      sig do
        params(
          bio: String,
          name: String,
          profile_picture: WhopSDK::UserUpdateMeParams::ProfilePicture::OrHash,
          username: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update_me(
        bio: nil,
        name: nil,
        profile_picture: nil,
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
