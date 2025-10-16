# typed: strong

module WhopSDK
  module Resources
    class Members
      # Retrieves a member of a company by ID
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
      def retrieve(id, request_options: {})
      end

      # List the members of a company
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      sig do
        params(
          company_id: String,
          access_level: T.nilable(WhopSDK::AccessLevel::OrSymbol),
          access_pass_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          most_recent_actions:
            T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]),
          order: T.nilable(WhopSDK::MemberListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          query: T.nilable(String),
          statuses: T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MemberListResponse]
        )
      end
      def list(
        # The ID of the company to list members for
        company_id:,
        # The access level a given user (or company) has to an access pass or company.
        access_level: nil,
        # The access pass IDs to filter the members by
        access_pass_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The most recent actions to filter the members by
        most_recent_actions: nil,
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the members by
        plan_ids: nil,
        # The promo code IDs to filter the members by
        promo_code_ids: nil,
        # The name, username, or email to filter the members by. The email filter will
        # only apply if the current actor has the `member:email:read` permission.
        query: nil,
        # The statuses to filter the members by
        statuses: nil,
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
