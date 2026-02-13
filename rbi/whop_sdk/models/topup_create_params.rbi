# typed: strong

module WhopSDK
  module Models
    class TopupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::TopupCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The amount to add to the balance in the specified currency. For example, 50.00
      # for $50.00 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The unique identifier of the company to add funds to, starting with 'biz\_'.
      sig { returns(String) }
      attr_accessor :company_id

      # The currency for the top-up amount, such as 'usd'.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The unique identifier of the stored payment method to charge for the top-up.
      sig { returns(String) }
      attr_accessor :payment_method_id

      sig do
        params(
          amount: Float,
          company_id: String,
          currency: WhopSDK::Currency::OrSymbol,
          payment_method_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            amount: Float,
            company_id: String,
            currency: WhopSDK::Currency::OrSymbol,
            payment_method_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
