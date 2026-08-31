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
      # Retrieves a user by `user_` tag or username, or the authenticated user with the
      # reserved id `me`. Profiles include linked social accounts — reading your own
      # profile returns every linked account, other profiles only what is public on Whop
      # (the primary Discord and the X account). The self-only fields are populated only
      # when the id is `me`: `email` (email-read scope), `staff` (Whop staff only,
      # staff-read scope), `balance` and `earnings_usd` (balance-read scope), and the
      # opt-in `balance_history`. They are always `null` when addressing a user by tag
      # or username.
      #
      # @overload retrieve(id, account_id: nil, from: nil, include_balance_history: nil, interval: nil, time_zone: nil, to: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: User ID (prefixed `user_`), username, or `me` for the authenticated
      #
      # @param account_id [String] Query param: When set, returns the user's account-specific profile overrides for
      #
      # @param from [String] Query param: Balance-history window start, ISO 8601 date or datetime. Defaults t
      #
      # @param include_balance_history [Boolean] Query param: Also compute your balance history (opt-in; runs a heavier query). O
      #
      # @param interval [Symbol, WhopSDK::Models::UserRetrieveParams::Interval] Query param: Balance-history point granularity. Defaults to `day`. Only used wit
      #
      # @param time_zone [String] Query param: IANA time zone the balance-history points are bucketed in. Defaults
      #
      # @param to [String] Query param: Balance-history window end, ISO 8601 date or datetime. Defaults to
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserRetrieveParams
      def retrieve(id, params = {})
        query_params = [:account_id, :from, :include_balance_history, :interval, :time_zone, :to]
        parsed, options = WhopSDK::UserRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["users/%1$s", id],
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::User,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserUpdateParams} for more details.
      #
      # Updates a user, addressed by `user_` tag, username, or the reserved id `me` for
      # the authenticated user. A user token updates their own global profile; an API
      # key updates the user's account-specific profile override (account_id required).
      #
      # @overload update(id, account_id: nil, banner: nil, bio: nil, name: nil, profile_picture: nil, username: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: User ID (prefixed `user_`), username, or `me` for the authenticated
      #
      # @param account_id [String] Query param: The account whose profile override to update. Required for API key
      #
      # @param banner [WhopSDK::Models::UserUpdateParams::Banner, nil] Body param
      #
      # @param bio [String] Body param
      #
      # @param name [String] Body param
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateParams::ProfilePicture] Body param
      #
      # @param username [String] Body param
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserUpdateParams
      def update(id, params = {})
        query_params = [:account_id]
        header_params = {api_version_date: "api-version-date"}
        parsed, options = WhopSDK::UserUpdateParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :patch,
          path: ["users/%1$s", id],
          query: query,
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*query_params, *header_params.keys),
          model: WhopSDK::User,
          options: options
        )
      end

      # Search for users by name or username, ranked by social proximity to the
      # authenticated user. Returns the user's most recently followed users when no
      # query is given.
      #
      # @overload list(after: nil, before: nil, first: nil, last: nil, query: nil, api_version_date: nil, request_options: {})
      #
      # @param after [String] Query param: A cursor; returns users after this position.
      #
      # @param before [String] Query param: A cursor; returns users before this position.
      #
      # @param first [Integer] Query param: The number of users to return (max 50).
      #
      # @param last [Integer] Query param: The number of users to return from the end of the range.
      #
      # @param query [String] Query param: A search term to filter users by name or username.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::User>]
      #
      # @see WhopSDK::Models::UserListParams
      def list(params = {})
        query_params = [:after, :before, :first, :last, :query]
        parsed, options = WhopSDK::UserListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "users",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::User,
          options: options
        )
      end

      # Checks whether a user has access to an account, product, or experience the
      # caller can reach.
      #
      # @overload check_access(resource_id, id:, api_version_date: nil, request_options: {})
      #
      # @param resource_id [String] Path param: An account (biz*), product (prod*), or experience (exp\_) ID.
      #
      # @param id [String] Path param: The user\_ tag or username to check access for.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
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
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::UserCheckAccessResponse,
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
