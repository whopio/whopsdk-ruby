# frozen_string_literal: true

module WhopSDK
  module Resources
    class Deposits
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DepositCreateParams} for more details.
      #
      # Resolves a deposit destination and returns the on-chain addresses that can fund
      # it.
      #
      # @overload create(amount:, destination:, metadata: nil, network: nil, request_options: {})
      #
      # @param amount [Float] Amount to deposit.
      #
      # @param destination [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1] Destination account ID or wallet address. Object form is supported for compatibi
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary metadata echoed in the response.
      #
      # @param network [String, nil] Optional destination network override.
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
