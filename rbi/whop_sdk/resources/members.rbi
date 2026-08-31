# typed: strong

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
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::MemberRetrieveResponse)
      end
      def retrieve(
        # Member ID (`mber_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the members of an account. A member is one buyer's relationship with the
      # account, regardless of how many memberships they hold.
      sig do
        params(
          access_level: WhopSDK::MemberListParams::AccessLevel::OrSymbol,
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::MemberListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::MemberListParams::Order::OrSymbol,
          query: String,
          status: WhopSDK::MemberListParams::Status::OrSymbol,
          user_ids: T::Array[String],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MemberListResponse]
        )
      end
      def list(
        # Query param: Filter by what the member can reach on the account.
        access_level: nil,
        # Query param: The account to list members for (`biz_` tag). Defaults to the
        # account the credential acts as.
        account_id: nil,
        # Query param: Cursor to paginate forwards from.
        after: nil,
        # Query param: Cursor to paginate backwards from.
        before: nil,
        # Query param: Only members who joined after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only members who joined before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: Number of members to return from the start of the window.
        first: nil,
        # Query param: Number of members to return from the end of the window.
        last: nil,
        # Query param: Sort field.
        order: nil,
        # Query param: Search members by name or username. An exact email address also
        # matches when the credential holds the member:email:read scope.
        query: nil,
        # Query param: Filter by whether the member is still part of the account.
        status: nil,
        # Query param: Only return members whose users match these `user_` identifiers.
        user_ids: nil,
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
