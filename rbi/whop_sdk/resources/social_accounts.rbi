# typed: strong

module WhopSDK
  module Resources
    # A Social Account represents an external profile connected to a Whop account or
    # user, such as a Facebook page or Instagram account. Connecting a social account
    # lets Whop run [ads](/api-reference/beta/ads/ad) under that profile's identity
    # and promote its existing posts.
    #
    # Use the Social Accounts API to list connected accounts, create a Whop-managed
    # Facebook page, start an OAuth connection, disconnect a social account, and list
    # a connected profile's posts.
    class SocialAccounts
      # Creates or returns a Whop-managed Facebook page for an account.
      sig do
        params(
          platform: WhopSDK::SocialAccountCreateParams::Platform::OrSymbol,
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::SocialAccount)
      end
      def create(
        # The platform to create the social account on.
        platform:,
        # The Account (biz\_ identifier) to create the social account for. An
        # account-scoped API key may omit this to default to its own account.
        account_id: nil,
        request_options: {}
      )
      end

      # Lists the social accounts linked to an account or user.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          direction: WhopSDK::SocialAccountListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::SocialAccountListParams::Order::OrSymbol,
          platform: WhopSDK::SocialAccountListParams::Platform::OrSymbol,
          scopes: T::Array[WhopSDK::SocialAccountListParams::Scope::OrSymbol],
          user_id: String,
          verified: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::SocialAccount])
      end
      def list(
        # The Account that the social accounts are connected to. Provide either this or
        # user_id.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Sort direction.
        direction: nil,
        # The number of social accounts to return.
        first: nil,
        # The number of social accounts to return from the end of the range.
        last: nil,
        # The field to sort social accounts by.
        order: nil,
        # Only return social accounts for the platform that is specified.
        platform: nil,
        # Only return social accounts that have these scopes.
        scopes: nil,
        # The User that the social accounts are connected to. Provide either this or
        # account_id.
        user_id: nil,
        # Only return social accounts that are verified on the platform.
        verified: nil,
        request_options: {}
      )
      end

      # Disconnects a social account from an account or user without deleting the
      # underlying platform account.
      sig do
        params(
          id: String,
          account_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ID of the social account to disconnect.
        id,
        # The Account that the social account is connected to. Provide either this or
        # user_id.
        account_id: nil,
        # The User that the social account is connected to. Provide either this or
        # account_id.
        user_id: nil,
        request_options: {}
      )
      end

      # Starts an OAuth connection flow and returns an authorize_url where the user can
      # connect a social account.
      sig do
        params(
          platform: WhopSDK::SocialAccountConnectParams::Platform::OrSymbol,
          account_id: String,
          redirect_url: String,
          scopes:
            T::Array[WhopSDK::SocialAccountConnectParams::Scope::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SocialAccountConnectResponse)
      end
      def connect(
        # The platform to connect the social account on. Today, the supported option is
        # `meta_business`.
        platform:,
        # The Account (biz\_ identifier) to connect the social account for. An
        # account-scoped API key may omit this to default to its own account.
        account_id: nil,
        # The Whop URL to redirect the user to after they finish connecting.
        redirect_url: nil,
        # Capabilities to grant for the connected social account. Use `advertise` when
        # connecting a Meta Business account for ads.
        scopes: nil,
        request_options: {}
      )
      end

      # Lists the existing posts of a connected Facebook page or Instagram account.
      sig do
        params(
          id: String,
          account_id: String,
          after: String,
          first: Integer,
          post_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SocialAccountPostsResponse)
      end
      def posts(
        # The social account (a sacc\_ identifier) whose posts to list.
        id,
        # The Account (a biz\_ identifier) the social account is connected to.
        account_id:,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # The number of posts to return.
        first: nil,
        # Return only the single post with this platform id, instead of the full list.
        post_id: nil,
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
