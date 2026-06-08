# frozen_string_literal: true

module WhopSDK
  module Resources
    class CardAccount
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CardAccountUpdateParams} for more details.
      #
      # Updates the auto-topup configuration on the account's card account.
      #
      # @overload update(account_id:, auto_topup_enabled: nil, auto_topup_target_usd: nil, auto_topup_threshold_usd: nil, request_options: {})
      #
      # @param account_id [String] Query param: The business or user account ID that owns the card account.
      #
      # @param auto_topup_enabled [Boolean] Body param: Whether auto-topup is enabled.
      #
      # @param auto_topup_target_usd [String] Body param: Target balance (USD) to top up to. Must exceed the threshold by at l
      #
      # @param auto_topup_threshold_usd [String] Body param: Balance threshold (USD) that triggers an auto-topup. Required when e
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardAccountAPI]
      #
      # @see WhopSDK::Models::CardAccountUpdateParams
      def update(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::CardAccountUpdateParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :patch,
          path: "card-account",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::CardAccountAPI,
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
