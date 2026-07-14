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
      attr_accessor :card_id

      # The owning account ID (a biz\_ identifier). Provide this or user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # New billing address. Requires line1, city, region, postal_code, and
      # country_code.
      sig { returns(T.nilable(WhopSDK::CardUpdateParams::Billing)) }
      attr_reader :billing

      sig { params(billing: WhopSDK::CardUpdateParams::Billing::OrHash).void }
      attr_writer :billing

      # Pass `true` to permanently cancel the card. A canceled card cannot be
      # uncanceled. Cannot be combined with other fields.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :canceled

      sig { params(canceled: T::Boolean).void }
      attr_writer :canceled

      # Pass `true` to freeze the card, `false` to unfreeze it.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :frozen

      sig { params(frozen: T::Boolean).void }
      attr_writer :frozen

      # A display name for the card.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # New 4-digit PIN. Can only be set on a card assigned to the acting user.
      sig { returns(T.nilable(String)) }
      attr_reader :pin

      sig { params(pin: String).void }
      attr_writer :pin

      # Pass `true` to remove the spending limit (make the card unlimited).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :remove_limit

      sig { params(remove_limit: T::Boolean).void }
      attr_writer :remove_limit

      # Spending limit amount, in dollars.
      sig { returns(T.nilable(Float)) }
      attr_reader :spend_limit

      sig { params(spend_limit: Float).void }
      attr_writer :spend_limit

      # The spending limit window.
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
          card_id: String,
          account_id: String,
          billing: WhopSDK::CardUpdateParams::Billing::OrHash,
          canceled: T::Boolean,
          frozen: T::Boolean,
          name: String,
          pin: String,
          remove_limit: T::Boolean,
          spend_limit: Float,
          spend_limit_frequency:
            WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: Float,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        card_id:,
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # New billing address. Requires line1, city, region, postal_code, and
        # country_code.
        billing: nil,
        # Pass `true` to permanently cancel the card. A canceled card cannot be
        # uncanceled. Cannot be combined with other fields.
        canceled: nil,
        # Pass `true` to freeze the card, `false` to unfreeze it.
        frozen: nil,
        # A display name for the card.
        name: nil,
        # New 4-digit PIN. Can only be set on a card assigned to the acting user.
        pin: nil,
        # Pass `true` to remove the spending limit (make the card unlimited).
        remove_limit: nil,
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
            card_id: String,
            account_id: String,
            billing: WhopSDK::CardUpdateParams::Billing,
            canceled: T::Boolean,
            frozen: T::Boolean,
            name: String,
            pin: String,
            remove_limit: T::Boolean,
            spend_limit: Float,
            spend_limit_frequency:
              WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
            transaction_limit: Float,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Billing < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardUpdateParams::Billing,
              WhopSDK::Internal::AnyHash
            )
          end

        # Billing city.
        sig { returns(String) }
        attr_accessor :city

        # Billing country code, ISO 3166-1 alpha-2.
        sig { returns(String) }
        attr_accessor :country_code

        # Street address line 1.
        sig { returns(String) }
        attr_accessor :line1

        # Billing postal code.
        sig { returns(String) }
        attr_accessor :postal_code

        # Billing region or state.
        sig { returns(String) }
        attr_accessor :region

        # Street address line 2.
        sig { returns(T.nilable(String)) }
        attr_reader :line2

        sig { params(line2: String).void }
        attr_writer :line2

        # New billing address. Requires line1, city, region, postal_code, and
        # country_code.
        sig do
          params(
            city: String,
            country_code: String,
            line1: String,
            postal_code: String,
            region: String,
            line2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Billing city.
          city:,
          # Billing country code, ISO 3166-1 alpha-2.
          country_code:,
          # Street address line 1.
          line1:,
          # Billing postal code.
          postal_code:,
          # Billing region or state.
          region:,
          # Street address line 2.
          line2: nil
        )
        end

        sig do
          override.returns(
            {
              city: String,
              country_code: String,
              line1: String,
              postal_code: String,
              region: String,
              line2: String
            }
          )
        end
        def to_hash
        end
      end

      # The spending limit window.
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
