# typed: strong

module WhopSDK
  module Resources
    # Members
    class Members
      # Retrieves the details of an existing member.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::MemberRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the member to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of members for a company, with extensive filtering by
      # product, plan, status, access level, and more.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      sig do
        params(
          access_level: T.nilable(WhopSDK::AccessLevel::OrSymbol),
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          most_recent_actions:
            T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]),
          order: T.nilable(WhopSDK::MemberListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          query: T.nilable(String),
          statuses: T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol]),
          user_ids: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MemberListResponse]
        )
      end
      def list(
        # The access level a given user (or company) has to a product or company.
        access_level: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list members for.
        company_id: nil,
        # Only return members created after this timestamp.
        created_after: nil,
        # Only return members created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter members by their most recent activity type.
        most_recent_actions: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter members to only those subscribed to these specific plans.
        plan_ids: nil,
        # Filter members to only those belonging to these specific products.
        product_ids: nil,
        # Filter members to only those who used these specific promo codes.
        promo_code_ids: nil,
        # Search members by name, username, or email. Email filtering requires the
        # member:email:read permission.
        query: nil,
        # Filter members by their current subscription status.
        statuses: nil,
        # Filter members to only those matching these specific user identifiers.
        user_ids: nil,
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
