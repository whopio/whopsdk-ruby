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

      # The positive number of tokens to transact. For example, 100.0 for 100 tokens.
      sig { returns(Float) }
      attr_accessor :amount

      # The unique identifier of the company to create the transaction in, starting with
      # 'biz\_'.
      sig { returns(String) }
      attr_accessor :company_id

      # The unique identifier of the user receiving the tokens. Required when the
      # transaction type is 'transfer'.
      sig { returns(String) }
      attr_accessor :destination_user_id

      sig { returns(Symbol) }
      attr_accessor :transaction_type

      # The unique identifier of the user whose token balance will be affected, starting
      # with 'user\_'.
      sig { returns(String) }
      attr_accessor :user_id

      # A human-readable description of why the transaction was created.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A unique key to prevent duplicate transactions. Use a UUID or similar unique
      # string.
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
        # The positive number of tokens to transact. For example, 100.0 for 100 tokens.
        amount:,
        # The unique identifier of the company to create the transaction in, starting with
        # 'biz\_'.
        company_id:,
        # The unique identifier of the user receiving the tokens. Required when the
        # transaction type is 'transfer'.
        destination_user_id:,
        # The unique identifier of the user whose token balance will be affected, starting
        # with 'user\_'.
        user_id:,
        # A human-readable description of why the transaction was created.
        description: nil,
        # A unique key to prevent duplicate transactions. Use a UUID or similar unique
        # string.
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
