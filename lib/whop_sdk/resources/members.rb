# frozen_string_literal: true

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
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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
      # List the members of a company
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      # - `member:phone:read`
      #
      # @overload list(company_id:, access_level: nil, access_pass_ids: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, most_recent_actions: nil, order: nil, plan_ids: nil, promo_code_ids: nil, query: nil, statuses: nil, user_ids: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list members for
      #
      # @param access_level [Symbol, WhopSDK::Models::AccessLevel, nil] The access level a given user (or company) has to an access pass or company.
      #
      # @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the members by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param most_recent_actions [Array<Symbol, WhopSDK::Models::MemberMostRecentActions>, nil] The most recent actions to filter the members by
      #
      # @param order [Symbol, WhopSDK::Models::MemberListParams::Order, nil] Which columns can be used to sort.
      #
      # @param plan_ids [Array<String>, nil] The plan IDs to filter the members by
      #
      # @param promo_code_ids [Array<String>, nil] The promo code IDs to filter the members by
      #
      # @param query [String, nil] The name, username, or email to filter the members by. The email filter will onl
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::MemberStatuses>, nil] The statuses to filter the members by
      #
      # @param user_ids [Array<String>, nil] The user IDs to filter the members by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::MemberListResponse>]
      #
      # @see WhopSDK::Models::MemberListParams
      def list(params)
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
