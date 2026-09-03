# typed: strong

module WhopSDK
  module Models
    class PaymentMethodListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentMethodListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company. Provide either this or member_id, not
      # both. Omit both to address your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter by whether the stored credential has permanently stopped charging, such
      # as a vault entry its provider closed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :broken

      sig { params(broken: T::Boolean).void }
      attr_writer :broken

      # Only return cards on these networks, such as the networks the seller accepts.
      # Payment methods that are not cards are unaffected.
      sig { returns(T.nilable(T::Array[WhopSDK::CardBrands::OrSymbol])) }
      attr_reader :card_brands

      sig { params(card_brands: T::Array[WhopSDK::CardBrands::OrSymbol]).void }
      attr_writer :card_brands

      # Only return cards funded this way. A card whose funding could not be determined
      # is excluded, and payment methods that are not cards are unaffected.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
            ]
          )
        )
      end
      attr_reader :card_funding_types

      sig do
        params(
          card_funding_types:
            T::Array[
              WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
            ]
        ).void
      end
      attr_writer :card_funding_types

      # Only return payment methods created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return payment methods created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction for ordering results, either ascending or descending.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # Filter by expiry. Only a card can expire, so `false` keeps every payment method
      # that is not past its expiration month and `true` returns expired cards alone.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :expired

      sig { params(expired: T::Boolean).void }
      attr_writer :expired

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Only return methods that can be charged this way after the buyer leaves. Every
      # stored credential answers either usage today, so this narrows nothing — it used
      # to drop the buyer's platform balance, which now lists on its own endpoint
      # instead of here.
      sig do
        returns(
          T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol)
        )
      end
      attr_reader :future_usage

      sig do
        params(
          future_usage: WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol
        ).void
      end
      attr_writer :future_usage

      # Filter cards by whether they carry the payer identity document their payment
      # provider requires. Payment methods that are not cards are unaffected.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_payer_document

      sig { params(has_payer_document: T::Boolean).void }
      attr_writer :has_payer_document

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The unique identifier of the member to list payment methods for. Omit this and
      # account_id to list your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_reader :member_id

      sig { params(member_id: String).void }
      attr_writer :member_id

      # Only return payment methods of these types. Pass the eligible `type` values from
      # the payment method types catalogue so the list holds nothing the purchase cannot
      # take. An empty list returns no payment methods.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]))
      end
      attr_reader :payment_method_types

      sig do
        params(
          payment_method_types: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]
        ).void
      end
      attr_writer :payment_method_types

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          broken: T::Boolean,
          card_brands: T::Array[WhopSDK::CardBrands::OrSymbol],
          card_funding_types:
            T::Array[
              WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
            ],
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          expired: T::Boolean,
          first: Integer,
          future_usage: WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol,
          has_payer_document: T::Boolean,
          last: Integer,
          member_id: String,
          payment_method_types: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        account_id: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by whether the stored credential has permanently stopped charging, such
        # as a vault entry its provider closed.
        broken: nil,
        # Only return cards on these networks, such as the networks the seller accepts.
        # Payment methods that are not cards are unaffected.
        card_brands: nil,
        # Only return cards funded this way. A card whose funding could not be determined
        # is excluded, and payment methods that are not cards are unaffected.
        card_funding_types: nil,
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Filter by expiry. Only a card can expire, so `false` keeps every payment method
        # that is not past its expiration month and `true` returns expired cards alone.
        expired: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Only return methods that can be charged this way after the buyer leaves. Every
        # stored credential answers either usage today, so this narrows nothing — it used
        # to drop the buyer's platform balance, which now lists on its own endpoint
        # instead of here.
        future_usage: nil,
        # Filter cards by whether they carry the payer identity document their payment
        # provider requires. Payment methods that are not cards are unaffected.
        has_payer_document: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for. Omit this and
        # account_id to list your own saved payment methods.
        member_id: nil,
        # Only return payment methods of these types. Pass the eligible `type` values from
        # the payment method types catalogue so the list holds nothing the purchase cannot
        # take. An empty list returns no payment methods.
        payment_method_types: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            broken: T::Boolean,
            card_brands: T::Array[WhopSDK::CardBrands::OrSymbol],
            card_funding_types:
              T::Array[
                WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
              ],
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            expired: T::Boolean,
            first: Integer,
            future_usage:
              WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol,
            has_payer_document: T::Boolean,
            last: Integer,
            member_id: String,
            payment_method_types:
              T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The funding types of a card
      module CardFundingType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PaymentMethodListParams::CardFundingType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            WhopSDK::PaymentMethodListParams::CardFundingType::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            WhopSDK::PaymentMethodListParams::CardFundingType::TaggedSymbol
          )
        PREPAID =
          T.let(
            :prepaid,
            WhopSDK::PaymentMethodListParams::CardFundingType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::PaymentMethodListParams::CardFundingType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Only return methods that can be charged this way after the buyer leaves. Every
      # stored credential answers either usage today, so this narrows nothing — it used
      # to drop the buyer's platform balance, which now lists on its own endpoint
      # instead of here.
      module FutureUsage
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PaymentMethodListParams::FutureUsage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OFF_SESSION =
          T.let(
            :off_session,
            WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
          )
        ON_SESSION =
          T.let(
            :on_session,
            WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
