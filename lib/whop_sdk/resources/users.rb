# frozen_string_literal: true

module WhopSDK
  module Resources
    # A User represents a person on Whop. Users have a public profile and can buy
    # products, join accounts, and access experiences.
    #
    # Use the Users API to search for users, retrieve or update profiles, and check
    # whether a user has access to an account, product, or experience.
    class Users
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserRetrieveParams} for more details.
      #
      # Retrieves a user's public profile by user\_ tag, username, or 'me'.
      #
      # @overload retrieve(id, account_id: nil, from: nil, include_balance_history: nil, interval: nil, time_zone: nil, to: nil, request_options: {})
      #
      # @param id [String] User ID (prefixed `user_`), username, or `me`.
      #
      # @param account_id [String] When set, returns the user's account-specific profile overrides for this account
      #
      # @param from [String] Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days ago
      #
      # @param include_balance_history [Boolean] On `GET /users/me`, also compute the caller's balance history (opt-in; runs a he
      #
      # @param interval [Symbol, WhopSDK::Models::UserRetrieveParams::Interval] Balance-history point granularity. Defaults to `day`. Only used with `include_ba
      #
      # @param time_zone [String] IANA time zone the balance-history points are bucketed in. Defaults to `UTC`. On
      #
      # @param to [String] Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only use
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::UserRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["users/%1$s", id],
          query: query,
          model: WhopSDK::User,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserUpdateParams} for more details.
      #
      # Updates a user. A user token updates their own global profile; an API key
      # updates the user's account-specific profile override (account_id required).
      #
      # @overload update(id, account_id: nil, bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #
      # @param id [String] Path param: User ID (prefixed `user_`), username, or `me`.
      #
      # @param account_id [String] Query param: The account whose profile override to update. Required for API key
      #
      # @param bio [String] Body param
      #
      # @param name [String] Body param
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateParams::ProfilePicture] Body param
      #
      # @param username [String] Body param
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserUpdateParams
      def update(id, params = {})
        query_params = [:account_id]
        parsed, options = WhopSDK::UserUpdateParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :patch,
          path: ["users/%1$s", id],
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::User,
          options: options
        )
      end

      # Search for users by name or username, ranked by social proximity to the
      # authenticated user. Returns the user's most recently followed users when no
      # query is given.
      #
      # @overload list(after: nil, before: nil, first: nil, last: nil, query: nil, request_options: {})
      #
      # @param after [String] A cursor; returns users after this position.
      #
      # @param before [String] A cursor; returns users before this position.
      #
      # @param first [Integer] The number of users to return (max 50).
      #
      # @param last [Integer] The number of users to return from the end of the range.
      #
      # @param query [String] A search term to filter users by name or username.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::User>]
      #
      # @see WhopSDK::Models::UserListParams
      def list(params = {})
        parsed, options = WhopSDK::UserListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "users",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::User,
          options: options
        )
      end

      # Checks whether a user has access to an account, product, or experience the
      # caller can reach.
      #
      # @overload check_access(resource_id, id:, request_options: {})
      #
      # @param resource_id [String] An account (biz*), product (prod*), or experience (exp\_) ID.
      #
      # @param id [String] The user\_ tag or username to check access for.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::UserCheckAccessResponse]
      #
      # @see WhopSDK::Models::UserCheckAccessParams
      def check_access(resource_id, params)
        parsed, options = WhopSDK::UserCheckAccessParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["users/%1$s/access/%2$s", id, resource_id],
          model: WhopSDK::Models::UserCheckAccessResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserUpdateMeParams} for more details.
      #
      # Updates the authenticated user's global profile, or their profile override for
      # an account when account_id is given. Not available to API keys.
      #
      # @overload update_me(account_id: nil, bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #
      # @param account_id [String] Query param: When set, updates the authenticated user's profile override for thi
      #
      # @param bio [String] Body param
      #
      # @param name [String] Body param
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateMeParams::ProfilePicture] Body param
      #
      # @param username [String] Body param
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserUpdateMeParams
      def update_me(params = {})
        query_params = [:account_id]
        parsed, options = WhopSDK::UserUpdateMeParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :patch,
          path: "users/me",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::User,
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
