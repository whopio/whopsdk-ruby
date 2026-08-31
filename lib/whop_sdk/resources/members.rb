# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Member is one buyer's relationship with an account — one record per customer
    # regardless of how many memberships they hold. It carries relationship-level
    # state: whether they have joined or left, their access level (`customer`,
    # `admin`, or `no_access`), when they joined, and when they last opened the
    # account's content.
    #
    # Use the Members API to list an account's members with filtering by access level,
    # status, join date, and name or username search, and to retrieve a single member.
    # Member rows are created and maintained by the membership lifecycle; to grant or
    # revoke access, work with memberships instead.
    class Members
      # Retrieves a member by ID. Accessible to the account and to the member's own
      # user.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Member ID (`mber_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::MemberRetrieveResponse]
      #
      # @see WhopSDK::Models::MemberRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::MemberRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["members/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::MemberRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MemberListParams} for more details.
      #
      # Lists the members of an account. A member is one buyer's relationship with the
      # account, regardless of how many memberships they hold.
      #
      # @overload list(access_level: nil, account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, user_ids: nil, api_version_date: nil, request_options: {})
      #
      # @param access_level [Symbol, WhopSDK::Models::MemberListParams::AccessLevel] Query param: Filter by what the member can reach on the account.
      #
      # @param account_id [String] Query param: The account to list members for (`biz_` tag). Defaults to the accou
      #
      # @param after [String] Query param: Cursor to paginate forwards from.
      #
      # @param before [String] Query param: Cursor to paginate backwards from.
      #
      # @param created_after [String] Query param: Only members who joined after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only members who joined before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::MemberListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: Number of members to return from the start of the window.
      #
      # @param last [Integer] Query param: Number of members to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::MemberListParams::Order] Query param: Sort field.
      #
      # @param query [String] Query param: Search members by name or username. An exact email address also mat
      #
      # @param status [Symbol, WhopSDK::Models::MemberListParams::Status] Query param: Filter by whether the member is still part of the account.
      #
      # @param user_ids [Array<String>] Query param: Only return members whose users match these `user_` identifiers.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MemberListResponse>]
      #
      # @see WhopSDK::Models::MemberListParams
      def list(params = {})
        query_params =
          [
            :access_level,
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :last,
            :order,
            :query,
            :status,
            :user_ids
          ]
        parsed, options = WhopSDK::MemberListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "members",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::MemberListResponse,
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
