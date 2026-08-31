# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Resolution Center Case is opened by a buyer when something is wrong with a
    # purchase — an unwanted renewal, an item that never arrived, or a charge they
    # don't recognize. It is the step before a chargeback: the two sides work it out
    # directly, and Whop decides the case if they can't. Each case carries a reason, a
    # status naming which side it is waiting on, a timeline of events, and the actions
    # available to whoever is reading it.
    #
    # Use the Resolution Center Cases API from either side: as the buyer, open a case,
    # reply, appeal a decision, or withdraw it; as the merchant, accept it (refunding
    # the payment), deny it, or ask the buyer for more information. Both sides read
    # the same case, page its timeline, and summarize the cases they can see.
    class ResolutionCenterCases
      # Retrieves a single resolution center case with its full event timeline.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The resolution center case ID (`reso_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ResolutionCenterCaseRetrieveResponse]
      #
      # @see WhopSDK::Models::ResolutionCenterCaseRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::ResolutionCenterCaseRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["resolution_center_cases/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ResolutionCenterCaseListParams} for more details.
      #
      # Lists resolution center cases. Without `account_id` you get every case you can
      # read — the ones you opened as a buyer and every account you are a team member
      # of; the filters narrow that list.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, outcome: nil, reason: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only cases filed against this account (`biz_` tag). With read acces
      #
      # @param after [String] Query param: A cursor; returns cases after this position.
      #
      # @param before [String] Query param: A cursor; returns cases before this position.
      #
      # @param created_after [String] Query param: Only cases created after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only cases created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: The number of cases to return (default 20, max 100).
      #
      # @param last [Integer] Query param: The number of cases to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Order] Query param: The field to sort cases by.
      #
      # @param outcome [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Outcome>] Query param: Only closed cases that ended these ways. Repeat the parameter to pa
      #
      # @param reason [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Reason>] Query param: Only cases opened for these reasons. Repeat the parameter to pass s
      #
      # @param status [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseListParams::Status>] Query param: Only cases in these statuses. Repeat the parameter to pass several
      #
      # @param user_id [String] Query param: Only cases opened by this customer — a `user_` tag, or `me` for the
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ResolutionCenterCaseListResponse>]
      #
      # @see WhopSDK::Models::ResolutionCenterCaseListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :last,
            :order,
            :outcome,
            :reason,
            :status,
            :user_id
          ]
        parsed, options = WhopSDK::ResolutionCenterCaseListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "resolution_center_cases",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ResolutionCenterCaseListResponse,
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
