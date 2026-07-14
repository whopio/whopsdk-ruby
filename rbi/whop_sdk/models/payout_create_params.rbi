# typed: strong

module WhopSDK
  module Models
    class PayoutCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PayoutCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The account to pay out from (a biz\_ identifier).
      sig { returns(String) }
      attr_accessor :account_id

      # The amount to pay out in the specified currency.
      sig { returns(Float) }
      attr_accessor :amount

      # The saved payout method to deliver to (a potk\_ identifier).
      sig { returns(String) }
      attr_accessor :payout_method_id

      # The payout currency. Defaults to usd.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # A client-generated key that makes retries safe. Retrying with the same key
      # returns the original payout instead of creating a second one.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          account_id: String,
          amount: Float,
          payout_method_id: String,
          currency: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account to pay out from (a biz\_ identifier).
        account_id:,
        # The amount to pay out in the specified currency.
        amount:,
        # The saved payout method to deliver to (a potk\_ identifier).
        payout_method_id:,
        # The payout currency. Defaults to usd.
        currency: nil,
        # A client-generated key that makes retries safe. Retrying with the same key
        # returns the original payout instead of creating a second one.
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Float,
            payout_method_id: String,
            currency: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
