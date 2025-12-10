# typed: strong

module WhopSDK
  module Models
    class WithdrawalCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WithdrawalCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The amount to withdraw
      sig { returns(Float) }
      attr_accessor :amount

      # The ID of the company to withdraw from.
      sig { returns(String) }
      attr_accessor :company_id

      # The currency that is being withdrawn.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The ID of the payout token to use for the withdrawal.
      sig { returns(T.nilable(String)) }
      attr_accessor :payout_method_id

      sig do
        params(
          amount: Float,
          company_id: String,
          currency: WhopSDK::Currency::OrSymbol,
          payout_method_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount to withdraw
        amount:,
        # The ID of the company to withdraw from.
        company_id:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the payout token to use for the withdrawal.
        payout_method_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            company_id: String,
            currency: WhopSDK::Currency::OrSymbol,
            payout_method_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
