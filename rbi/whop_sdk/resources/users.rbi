# typed: strong

module WhopSDK
  module Resources
    # A User represents a person on Whop. Users have a public profile and can buy
    # products, join accounts, and access experiences.
    #
    # Use the Users API to search for users, retrieve or update profiles, and check
    # whether a user has access to an account, product, or experience.
    class Users
      # Retrieves a user's public profile by user\_ tag, username, or 'me'.
      sig do
        params(
          id: String,
          account_id: String,
          from: String,
          include_balance_history: T::Boolean,
          interval: WhopSDK::UserRetrieveParams::Interval::OrSymbol,
          time_zone: String,
          to: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def retrieve(
        # User ID (prefixed `user_`), username, or `me`.
        id,
        # When set, returns the user's account-specific profile overrides for this
        # account.
        account_id: nil,
        # Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days
        # ago. Only used with `include_balance_history`.
        from: nil,
        # On `GET /users/me`, also compute the caller's balance history (opt-in; runs a
        # heavier query). Ignored for other users and for callers without balance-read
        # scope.
        include_balance_history: nil,
        # Balance-history point granularity. Defaults to `day`. Only used with
        # `include_balance_history`.
        interval: nil,
        # IANA time zone the balance-history points are bucketed in. Defaults to `UTC`.
        # Only used with `include_balance_history`.
        time_zone: nil,
        # Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only
        # used with `include_balance_history`.
        to: nil,
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
          profile_picture: WhopSDK::UserUpdateParams::ProfilePicture::OrHash,
          username: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update(
        # Path param: User ID (prefixed `user_`), username, or `me`.
        id,
        # Query param: The account whose profile override to update. Required for API key
        # callers.
        account_id: nil,
        # Body param
        bio: nil,
        # Body param
        name: nil,
        # Body param
        profile_picture: nil,
        # Body param
        username: nil,
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

      # Checks whether a user has access to an account, product, or experience the
      # caller can reach.
      sig do
        params(
          resource_id: String,
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserCheckAccessResponse)
      end
      def check_access(
        # An account (biz*), product (prod*), or experience (exp\_) ID.
        resource_id,
        # The user\_ tag or username to check access for.
        id:,
        request_options: {}
      )
      end

      # Lists the recommended actions computed for the user: personal suggestions (e.g.
      # start a business or become an affiliate) pooled with the highest-impact actions
      # across the accounts the user owns. Business actions are tagged with their
      # `account_id`/`account_name`; personal actions leave those `null`. Self-only:
      # `id` must be `me` or the authenticated user's own tag/username.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserRecommendActionsResponse)
      end
      def recommend_actions(
        # `me`, or the authenticated user's own `user_` tag or username.
        id,
        request_options: {}
      )
      end

      # Updates the authenticated user's global profile, or their profile override for
      # an account when account_id is given. Not available to API keys.
      sig do
        params(
          account_id: String,
          bio: String,
          name: String,
          profile_picture: WhopSDK::UserUpdateMeParams::ProfilePicture::OrHash,
          username: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update_me(
        # Query param: When set, updates the authenticated user's profile override for
        # this account instead of their global profile.
        account_id: nil,
        # Body param
        bio: nil,
        # Body param
        name: nil,
        # Body param
        profile_picture: nil,
        # Body param
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
