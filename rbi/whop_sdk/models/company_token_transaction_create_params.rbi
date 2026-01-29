# typed: strong

module WhopSDK
  module Models
    class CompanyTokenTransactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CompanyTokenTransactionCreateParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The positive amount of tokens
      sig { returns(Float) }
      attr_accessor :amount

      # The company ID
      sig { returns(String) }
      attr_accessor :company_id

      # Required for transfers - the user to receive tokens
      sig { returns(String) }
      attr_accessor :destination_user_id

      sig { returns(Symbol) }
      attr_accessor :transaction_type

      # The user ID whose balance will change
      sig { returns(String) }
      attr_accessor :user_id

      # Optional description for the transaction
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional key to prevent duplicate transactions
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig do
        params(
          amount: Float,
          company_id: String,
          destination_user_id: String,
          user_id: String,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          transaction_type: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The positive amount of tokens
        amount:,
        # The company ID
        company_id:,
        # Required for transfers - the user to receive tokens
        destination_user_id:,
        # The user ID whose balance will change
        user_id:,
        # Optional description for the transaction
        description: nil,
        # Optional key to prevent duplicate transactions
        idempotency_key: nil,
        transaction_type: :subtract,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            company_id: String,
            destination_user_id: String,
            transaction_type: Symbol,
            user_id: String,
            description: T.nilable(String),
            idempotency_key: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
