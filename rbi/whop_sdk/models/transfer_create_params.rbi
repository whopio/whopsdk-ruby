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

      # The amount to transfer. Provided as a number in the specified currency. Eg:
      # 25.00 for $25.00 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The currency that is being withdrawn.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The ID of the destination account which will receive the funds (either a User
      # ID, Company ID, or LedgerAccount ID)
      sig { returns(String) }
      attr_accessor :destination_id

      # The ID of the origin account which will send the funds (either a User ID,
      # Company ID, or LedgerAccount ID)
      sig { returns(String) }
      attr_accessor :origin_id

      # A unique key to ensure idempotence. Use a UUID or similar.
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotence_key

      # A hash of metadata to attach to the transfer.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Notes for the transfer. Maximum of 50 characters.
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
        # The amount to transfer. Provided as a number in the specified currency. Eg:
        # 25.00 for $25.00 USD.
        amount:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the destination account which will receive the funds (either a User
        # ID, Company ID, or LedgerAccount ID)
        destination_id:,
        # The ID of the origin account which will send the funds (either a User ID,
        # Company ID, or LedgerAccount ID)
        origin_id:,
        # A unique key to ensure idempotence. Use a UUID or similar.
        idempotence_key: nil,
        # A hash of metadata to attach to the transfer.
        metadata: nil,
        # Notes for the transfer. Maximum of 50 characters.
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
