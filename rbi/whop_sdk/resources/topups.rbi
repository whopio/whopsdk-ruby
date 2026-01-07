# typed: strong

module WhopSDK
  module Resources
    class Topups
      # Add funds to your platform balance by charging a stored payment method.
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
        # The amount to add to the balance.
        amount:,
        # The ID of the company to add funds to.
        company_id:,
        # The currency of the top-up.
        currency:,
        # The ID of the payment method to charge for the top-up.
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
