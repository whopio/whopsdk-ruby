# typed: strong

module WhopSDK
  module Resources
    # A User represents a person on Whop. Users have a public profile and can buy
    # products, join accounts, and access experiences.
    #
    # Use the Users API to search for users, retrieve or update profiles, and check
    # whether a user has access to an account, product, or experience.
    class Users
      # Retrieves a user by `user_` tag or username, or the authenticated user with the
      # reserved id `me`. Profiles include linked social accounts — reading your own
      # profile returns every linked account, other profiles only what is public on Whop
      # (the primary Discord and the X account). The self-only fields are populated only
      # when the id is `me`: `email` (email-read scope), `staff` (Whop staff only,
      # staff-read scope), `balance` and `earnings_usd` (balance-read scope), and the
      # opt-in `balance_history`. They are always `null` when addressing a user by tag
      # or username.
      sig do
        params(
          id: String,
          account_id: String,
          from: String,
          include_balance_history: T::Boolean,
          interval: WhopSDK::UserRetrieveParams::Interval::OrSymbol,
          time_zone: String,
          to: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def retrieve(
        # Path param: User ID (prefixed `user_`), username, or `me` for the authenticated
        # user.
        id,
        # Query param: When set, returns the user's account-specific profile overrides for
        # this account.
        account_id: nil,
        # Query param: Balance-history window start, ISO 8601 date or datetime. Defaults
        # to 30 days ago. Only used with `include_balance_history`.
        from: nil,
        # Query param: Also compute your balance history (opt-in; runs a heavier query).
        # Only applies when the id is `me`; ignored for callers without balance-read
        # scope.
        include_balance_history: nil,
        # Query param: Balance-history point granularity. Defaults to `day`. Only used
        # with `include_balance_history`.
        interval: nil,
        # Query param: IANA time zone the balance-history points are bucketed in. Defaults
        # to `UTC`. Only used with `include_balance_history`.
        time_zone: nil,
        # Query param: Balance-history window end, ISO 8601 date or datetime. Defaults to
        # now. Only used with `include_balance_history`.
        to: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Updates a user, addressed by `user_` tag, username, or the reserved id `me` for
      # the authenticated user. A user token updates their own global profile; an API
      # key updates the user's account-specific profile override (account_id required).
      sig do
        params(
          id: String,
          account_id: String,
          banner: T.nilable(WhopSDK::UserUpdateParams::Banner::OrHash),
          bio: String,
          name: String,
          profile_picture: WhopSDK::UserUpdateParams::ProfilePicture::OrHash,
          username: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update(
        # Path param: User ID (prefixed `user_`), username, or `me` for the authenticated
        # user.
        id,
        # Query param: The account whose profile override to update. Required for API key
        # callers.
        account_id: nil,
        # Body param
        banner: nil,
        # Body param
        bio: nil,
        # Body param
        name: nil,
        # Body param
        profile_picture: nil,
        # Body param
        username: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::User])
      end
      def list(
        # Query param: A cursor; returns users after this position.
        after: nil,
        # Query param: A cursor; returns users before this position.
        before: nil,
        # Query param: The number of users to return (max 50).
        first: nil,
        # Query param: The number of users to return from the end of the range.
        last: nil,
        # Query param: A search term to filter users by name or username.
        query: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Checks whether a user has access to an account, product, or experience the
      # caller can reach.
      sig do
        params(
          resource_id: String,
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserCheckAccessResponse)
      end
      def check_access(
        # Path param: An account (biz*), product (prod*), or experience (exp\_) ID.
        resource_id,
        # Path param: The user\_ tag or username to check access for.
        id:,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
