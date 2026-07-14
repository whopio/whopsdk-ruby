# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SocialAccountCreateParams} for more details.
      #
      # Creates or returns a Whop-managed Facebook page for an account.
      #
      # @overload create(platform:, account_id: nil, request_options: {})
      #
      # @param platform [Symbol, WhopSDK::Models::SocialAccountCreateParams::Platform] The platform to create the social account on.
      #
      # @param account_id [String] The Account (biz\_ identifier) to create the social account for. An
      # account-scope
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SocialAccount]
      #
      # @see WhopSDK::Models::SocialAccountCreateParams
      def create(params)
        parsed, options = WhopSDK::SocialAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "social_accounts",
          body: parsed,
          model: WhopSDK::SocialAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SocialAccountListParams} for more details.
      #
      # Lists the social accounts linked to an account or user.
      #
      # @overload list(account_id: nil, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, platform: nil, scopes: nil, user_id: nil, verified: nil, request_options: {})
      #
      # @param account_id [String] The Account that the social accounts are connected to. Provide either this or us
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param direction [Symbol, WhopSDK::Models::SocialAccountListParams::Direction] Sort direction.
      #
      # @param first [Integer] The number of social accounts to return.
      #
      # @param last [Integer] The number of social accounts to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::SocialAccountListParams::Order] The field to sort social accounts by.
      #
      # @param platform [Symbol, WhopSDK::Models::SocialAccountListParams::Platform] Only return social accounts for the platform that is specified.
      #
      # @param scopes [Array<Symbol, WhopSDK::Models::SocialAccountListParams::Scope>] Only return social accounts that have these scopes.
      #
      # @param user_id [String] The User that the social accounts are connected to. Provide either this or accou
      #
      # @param verified [Boolean] Only return social accounts that are verified on the platform.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::SocialAccount>]
      #
      # @see WhopSDK::Models::SocialAccountListParams
      def list(params = {})
        parsed, options = WhopSDK::SocialAccountListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "social_accounts",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::SocialAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SocialAccountDeleteParams} for more details.
      #
      # Disconnects a social account from an account or user without deleting the
      # underlying platform account.
      #
      # @overload delete(id, account_id: nil, user_id: nil, request_options: {})
      #
      # @param id [String] The ID of the social account to disconnect.
      #
      # @param account_id [String] The Account that the social account is connected to. Provide either this or user
      #
      # @param user_id [String] The User that the social account is connected to. Provide either this or account
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::SocialAccountDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::SocialAccountDeleteParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["social_accounts/%1$s", id],
          query: query,
          model: WhopSDK::Internal::Type::Boolean,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SocialAccountConnectParams} for more details.
      #
      # Starts an OAuth connection flow and returns an authorize_url where the user can
      # connect a social account.
      #
      # @overload connect(platform:, account_id: nil, redirect_url: nil, scopes: nil, request_options: {})
      #
      # @param platform [Symbol, WhopSDK::Models::SocialAccountConnectParams::Platform] The platform to connect the social account on. Today, the supported option is `m
      #
      # @param account_id [String] The Account (biz\_ identifier) to connect the social account for. An
      # account-scop
      #
      # @param redirect_url [String] The Whop URL to redirect the user to after they finish connecting.
      #
      # @param scopes [Array<Symbol, WhopSDK::Models::SocialAccountConnectParams::Scope>] Capabilities to grant for the connected social account. Use `advertise` when con
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SocialAccountConnectResponse]
      #
      # @see WhopSDK::Models::SocialAccountConnectParams
      def connect(params)
        parsed, options = WhopSDK::SocialAccountConnectParams.dump_request(params)
        @client.request(
          method: :post,
          path: "social_accounts/connect",
          body: parsed,
          model: WhopSDK::Models::SocialAccountConnectResponse,
          options: options
        )
      end

      # Lists the existing posts of a connected Facebook page or Instagram account.
      #
      # @overload posts(id, account_id:, after: nil, first: nil, post_id: nil, request_options: {})
      #
      # @param id [String] The social account (a sacc\_ identifier) whose posts to list.
      #
      # @param account_id [String] The Account (a biz\_ identifier) the social account is connected to.
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param first [Integer] The number of posts to return.
      #
      # @param post_id [String] Return only the single post with this platform id, instead of the full list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SocialAccountPostsResponse]
      #
      # @see WhopSDK::Models::SocialAccountPostsParams
      def posts(id, params)
        parsed, options = WhopSDK::SocialAccountPostsParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["social_accounts/%1$s/posts", id],
          query: query,
          model: WhopSDK::Models::SocialAccountPostsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
