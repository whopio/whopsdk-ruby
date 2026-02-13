# frozen_string_literal: true

module WhopSDK
  module Resources
    class Members
      # Retrieves the details of an existing member.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the member to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::MemberRetrieveResponse]
      #
      # @see WhopSDK::Models::MemberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["members/%1$s", id],
          model: WhopSDK::Models::MemberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MemberListParams} for more details.
      #
      # Returns a paginated list of members for a company, with extensive filtering by
      # product, plan, status, access level, and more.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      #
      # @overload list(access_level: nil, after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, most_recent_actions: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, query: nil, statuses: nil, user_ids: nil, request_options: {})
      #
      # @param access_level [Symbol, WhopSDK::Models::AccessLevel, nil] The access level a given user (or company) has to a product or company.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to list members for.
      #
      # @param created_after [Time, nil] Only return members created after this timestamp.
      #
      # @param created_before [Time, nil] Only return members created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param most_recent_actions [Array<Symbol, WhopSDK::Models::MemberMostRecentActions>, nil] Filter members by their most recent activity type.
      #
      # @param order [Symbol, WhopSDK::Models::MemberListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] Filter members to only those subscribed to these specific plans.
      #
      # @param product_ids [Array<String>, nil] Filter members to only those belonging to these specific products.
      #
      # @param promo_code_ids [Array<String>, nil] Filter members to only those who used these specific promo codes.
      #
      # @param query [String, nil] Search members by name, username, or email. Email filtering requires the member:
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil] Filter members by their current subscription status.
      #
      # @param user_ids [Array<String>, nil] Filter members to only those matching these specific user identifiers.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MemberListResponse>]
      #
      # @see WhopSDK::Models::MemberListParams
      def list(params = {})
        parsed, options = WhopSDK::MemberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "members",
          query: parsed,
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
