# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Setup Intent saves a buyer's payment method for later without taking money
    # now. Create one from a confirmation token the payment elements collected in
    # setup mode, or from a payment method already on file to re-verify it. It runs
    # the same collection flow a payment does, so the buyer may still owe a step: 3D
    # Secure on a card, a hosted enrollment, or linking a bank account.
    #
    # The create response is the setup intent as created, not its outcome. Hand its
    # `client_secret` to the elements' `handleNextAction`, or poll
    # [Retrieve status](/api-reference/beta/setup-intents/retrieve-setup-status) for
    # how far the setup has gone and what is outstanding. Once it reaches `succeeded`,
    # `payment_method_id` names the saved method and Create Payment charges it.
    class SetupIntents
      # Returns one setup intent. Related records are ids — once `status` is
      # `succeeded`, `payment_method_id` is the saved method to charge or retrieve. The
      # buyer's own token may retrieve a setup intent that belongs to it.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The setup intent to retrieve, prefixed `sint_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SetupIntent]
      #
      # @see WhopSDK::Models::SetupIntentRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::SetupIntentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["setup_intents/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::SetupIntent,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SetupIntentListParams} for more details.
      #
      # Lists setup intents newest first. An account API key lists its own account; a
      # user token lists every account it can read, or one account with `account_id`.
      # `client_secret` is always null on list rows — retrieve the setup intent for it.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only setup intents for this account, prefixed `biz_`.
      #
      # @param after [String] Query param: Return results after this cursor. Use `page_info.end_cursor` from t
      #
      # @param before [String] Query param: Return results before this cursor. Use `page_info.start_cursor` fro
      #
      # @param created_after [Time] Query param: Only setup intents created after this ISO 8601 timestamp.
      #
      # @param created_before [Time] Query param: Only setup intents created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::SetupIntentListParams::Direction] Query param: The sort direction.
      #
      # @param first [Integer] Query param: Number of results to return from the start of the range.
      #
      # @param last [Integer] Query param: Number of results to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::SetupIntentListParams::Order] Query param: The field to sort by.
      #
      # @param status [Symbol, WhopSDK::Models::SetupIntentListParams::Status] Query param: Only setup intents in this state.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::SetupIntent>]
      #
      # @see WhopSDK::Models::SetupIntentListParams
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
            :status
          ]
        parsed, options = WhopSDK::SetupIntentListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "setup_intents",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::SetupIntent,
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
