# typed: strong

module WhopSDK
  module Models
    class TransferCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::TransferCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The amount to transfer in the specified currency. For example, 25.00 for $25.00
      # USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The currency of the transfer amount, such as 'usd'.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The identifier of the account receiving the funds. Accepts a user ID
      # ('user_xxx'), company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      sig { returns(String) }
      attr_accessor :destination_id

      # The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
      # company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
      sig { returns(String) }
      attr_accessor :origin_id

      # A unique key to prevent duplicate transfers. Use a UUID or similar unique
      # string.
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotence_key

      # A JSON object of custom metadata to attach to the transfer for tracking
      # purposes.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # A short note describing the transfer, up to 50 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      sig do
        params(
          amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          destination_id: String,
          origin_id: String,
          idempotence_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount to transfer in the specified currency. For example, 25.00 for $25.00
        # USD.
        amount:,
        # The currency of the transfer amount, such as 'usd'.
        currency:,
        # The identifier of the account receiving the funds. Accepts a user ID
        # ('user_xxx'), company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        destination_id:,
        # The identifier of the account sending the funds. Accepts a user ID ('user_xxx'),
        # company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        origin_id:,
        # A unique key to prevent duplicate transfers. Use a UUID or similar unique
        # string.
        idempotence_key: nil,
        # A JSON object of custom metadata to attach to the transfer for tracking
        # purposes.
        metadata: nil,
        # A short note describing the transfer, up to 50 characters.
        notes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            currency: WhopSDK::Currency::OrSymbol,
            destination_id: String,
            origin_id: String,
            idempotence_key: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
