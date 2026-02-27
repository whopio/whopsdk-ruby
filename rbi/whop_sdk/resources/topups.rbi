# typed: strong

module WhopSDK
  module Resources
    # Topups
    class Topups
      # Add funds to a company's platform balance by charging a stored payment method.
      # Top-ups have no fees or taxes and do not count as revenue.
      #
      # Required permissions:
      #
      # - `payment:charge`
      sig do
        params(
          amount: Float,
          company_id: String,
          currency: WhopSDK::Currency::OrSymbol,
          payment_method_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::TopupCreateResponse)
      end
      def create(
        # The amount to add to the balance in the specified currency. For example, 50.00
        # for $50.00 USD.
        amount:,
        # The unique identifier of the company to add funds to, starting with 'biz\_'.
        company_id:,
        # The currency for the top-up amount, such as 'usd'.
        currency:,
        # The unique identifier of the stored payment method to charge for the top-up.
        payment_method_id:,
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
