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
          access_level: WhopSDK::AccessLevel::OrSymbol,
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          most_recent_actions:
            T::Array[WhopSDK::MemberMostRecentActions::OrSymbol],
          order: WhopSDK::MemberListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          promo_code_ids: T::Array[String],
          query: String,
          statuses: T::Array[WhopSDK::MemberStatuses::OrSymbol],
          user_ids: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MemberListResponse]
        )
      end
      def list(
        # Filter members by their current access level to the product.
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
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter members by their most recent activity type.
        most_recent_actions: nil,
        # The column to sort members by, such as creation date or revenue.
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
