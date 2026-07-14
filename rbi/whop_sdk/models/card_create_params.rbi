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

      # The owning account ID (a biz\_ identifier). Provide this or user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The company member (a user\_ identifier) to assign the card to. Required for
      # company (business) card issuing accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :assigned_user_id

      sig { params(assigned_user_id: String).void }
      attr_writer :assigned_user_id

      # A display name for the card.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Spending limit amount, in dollars.
      sig { returns(T.nilable(Float)) }
      attr_reader :spend_limit

      sig { params(spend_limit: Float).void }
      attr_writer :spend_limit

      # The spending limit window.
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

      # Per-transaction limit amount, in dollars.
      sig { returns(T.nilable(Float)) }
      attr_reader :transaction_limit

      sig { params(transaction_limit: Float).void }
      attr_writer :transaction_limit

      # The owning user ID (a user\_ identifier). Provide this or account_id.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          account_id: String,
          assigned_user_id: String,
          name: String,
          spend_limit: Float,
          spend_limit_frequency:
            WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: Float,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # The company member (a user\_ identifier) to assign the card to. Required for
        # company (business) card issuing accounts.
        assigned_user_id: nil,
        # A display name for the card.
        name: nil,
        # Spending limit amount, in dollars.
        spend_limit: nil,
        # The spending limit window.
        spend_limit_frequency: nil,
        # Per-transaction limit amount, in dollars.
        transaction_limit: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            assigned_user_id: String,
            name: String,
            spend_limit: Float,
            spend_limit_frequency:
              WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
            transaction_limit: Float,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The spending limit window.
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
