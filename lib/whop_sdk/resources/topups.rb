# frozen_string_literal: true

module WhopSDK
  module Resources
    class Topups
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TopupCreateParams} for more details.
      #
      # Add funds to a company's platform balance by charging a stored payment method.
      # Top-ups have no fees or taxes and do not count as revenue.
      #
      # Required permissions:
      #
      # - `payment:charge`
      #
      # @overload create(amount:, company_id:, currency:, payment_method_id:, request_options: {})
      #
      # @param amount [Float] The amount to add to the balance in the specified currency. For example, 50.00 f
      #
      # @param company_id [String] The unique identifier of the company to add funds to, starting with 'biz\_'.
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency for the top-up amount, such as 'usd'.
      #
      # @param payment_method_id [String] The unique identifier of the stored payment method to charge for the top-up.
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
