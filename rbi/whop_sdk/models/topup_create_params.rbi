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

      # The unique identifier of the company to add funds to, starting with 'biz\_'.
      sig { returns(String) }
      attr_accessor :account_id

      # The amount to add to the balance in the specified currency. For example, 50.00
      # for $50.00 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The currency for the top-up amount, such as 'usd'.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The unique identifier of the stored payment method to charge for the top-up.
      sig { returns(String) }
      attr_accessor :payment_method_id

      sig do
        params(
          account_id: String,
          amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          payment_method_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to add funds to, starting with 'biz\_'.
        account_id:,
        # The amount to add to the balance in the specified currency. For example, 50.00
        # for $50.00 USD.
        amount:,
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
            account_id: String,
            amount: Float,
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
