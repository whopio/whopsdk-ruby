# typed: strong

module WhopSDK
  module Models
    class CardUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :spend_limit

      sig { params(spend_limit: String).void }
      attr_writer :spend_limit

      sig do
        returns(
          T.nilable(WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol)
        )
      end
      attr_reader :spend_limit_frequency

      sig do
        params(
          spend_limit_frequency:
            WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol
        ).void
      end
      attr_writer :spend_limit_frequency

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_limit

      sig { params(transaction_limit: String).void }
      attr_writer :transaction_limit

      sig do
        params(
          id: String,
          name: String,
          spend_limit: String,
          spend_limit_frequency:
            WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        name: nil,
        spend_limit: nil,
        spend_limit_frequency: nil,
        transaction_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            spend_limit: String,
            spend_limit_frequency:
              WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
            transaction_limit: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SpendLimitFrequency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CardUpdateParams::SpendLimitFrequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::CardUpdateParams::SpendLimitFrequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            WhopSDK::CardUpdateParams::SpendLimitFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            WhopSDK::CardUpdateParams::SpendLimitFrequency::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            WhopSDK::CardUpdateParams::SpendLimitFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CardUpdateParams::SpendLimitFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
