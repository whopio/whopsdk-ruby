# typed: strong

module WhopSDK
  module Models
    class CardCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The business or user account ID to issue the card for.
      sig { returns(String) }
      attr_accessor :account_id

      # Display name for the card.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Recurring spend limit in dollars (requires spend_limit_frequency).
      sig { returns(T.nilable(String)) }
      attr_reader :spend_limit

      sig { params(spend_limit: String).void }
      attr_writer :spend_limit

      sig do
        returns(
          T.nilable(WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol)
        )
      end
      attr_reader :spend_limit_frequency

      sig do
        params(
          spend_limit_frequency:
            WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol
        ).void
      end
      attr_writer :spend_limit_frequency

      # Per-authorization limit in dollars (mutually exclusive with spend_limit).
      sig { returns(T.nilable(String)) }
      attr_reader :transaction_limit

      sig { params(transaction_limit: String).void }
      attr_writer :transaction_limit

      sig do
        params(
          account_id: String,
          name: String,
          spend_limit: String,
          spend_limit_frequency:
            WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business or user account ID to issue the card for.
        account_id:,
        # Display name for the card.
        name: nil,
        # Recurring spend limit in dollars (requires spend_limit_frequency).
        spend_limit: nil,
        spend_limit_frequency: nil,
        # Per-authorization limit in dollars (mutually exclusive with spend_limit).
        transaction_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            name: String,
            spend_limit: String,
            spend_limit_frequency:
              WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
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
            T.all(Symbol, WhopSDK::CardCreateParams::SpendLimitFrequency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::CardCreateParams::SpendLimitFrequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            WhopSDK::CardCreateParams::SpendLimitFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            WhopSDK::CardCreateParams::SpendLimitFrequency::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            WhopSDK::CardCreateParams::SpendLimitFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CardCreateParams::SpendLimitFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
