# frozen_string_literal: true

module WhopSDK
  module Resources
    # Deposits describe ways to add funds to an account balance, including hosted
    # deposit pages, bank deposit instructions, and supported crypto wallet addresses.
    #
    # Use the Deposits API to create deposit instructions for an account and retrieve
    # existing bank deposit activity.
    class Deposits
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DepositCreateParams} for more details.
      #
      # Resolves a deposit destination and returns the on-chain addresses that can fund
      # it. No authentication is required; any business can be resolved by its account
      # ID. A caller authenticated as a user can additionally resolve their own user
      # account.
      #
      # @overload create(destination:, amount: nil, metadata: nil, network: nil, request_options: {})
      #
      # @param destination [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1] Destination account ID or wallet address. Object form is supported for compatibi
      #
      # @param amount [Float] Amount to prefill on hosted deposit page.
      #
      # @param metadata [Hash{Symbol=>Object}] Metadata to include with the deposit response.
      #
      # @param network [String, nil] Destination network override.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DepositCreateResponse]
      #
      # @see WhopSDK::Models::DepositCreateParams
      def create(params)
        parsed, options = WhopSDK::DepositCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "deposits",
          body: parsed,
          model: WhopSDK::Models::DepositCreateResponse,
          options: options
        )
      end

      # Returns deposit transactions for a business account. Bank deposit transactions
      # are nested under the bank field.
      #
      # @overload list(account_id:, request_options: {})
      #
      # @param account_id [String] Business account ID (biz\_\*).
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::DepositListResponse]
      #
      # @see WhopSDK::Models::DepositListParams
      def list(params)
        parsed, options = WhopSDK::DepositListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "deposits",
          query: query,
          model: WhopSDK::Models::DepositListResponse,
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
