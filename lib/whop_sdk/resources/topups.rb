# frozen_string_literal: true

module WhopSDK
  module Resources
    class Topups
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TopupCreateParams} for more details.
      #
      # Add funds to your platform balance by charging a stored payment method.
      #
      # Required permissions:
      #
      # - `payment:charge`
      #
      # @overload create(amount:, company_id:, currency:, payment_method_id:, request_options: {})
      #
      # @param amount [Float] The amount to add to the balance. Provided as a number in the specified currency
      #
      # @param company_id [String] The ID of the company to add funds to.
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency of the top-up.
      #
      # @param payment_method_id [String] The ID of the payment method to charge for the top-up.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::TopupCreateResponse]
      #
      # @see WhopSDK::Models::TopupCreateParams
      def create(params)
        parsed, options = WhopSDK::TopupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "topups",
          body: parsed,
          model: WhopSDK::Models::TopupCreateResponse,
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
