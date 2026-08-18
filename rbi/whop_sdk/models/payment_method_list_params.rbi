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

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter by whether the stored credential has permanently stopped charging, such
      # as a vault entry its provider closed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :broken

      # Only return cards on these networks, such as the networks the seller accepts.
      # Payment methods that are not cards are unaffected.
      sig { returns(T.nilable(T::Array[WhopSDK::CardBrands::OrSymbol])) }
      attr_accessor :card_brands

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
      attr_accessor :card_funding_types

      # The unique identifier of the company. Provide either this or member_id, not
      # both. Omit both to address your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return payment methods created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return payment methods created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Filter by expiry. Only a card can expire, so `false` keeps every payment method
      # that is not past its expiration month and `true` returns expired cards alone.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :expired

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # How a payment method will be charged after the buyer leaves — the same
      # vocabulary as a confirmation token's setup_future_usage.
      sig do
        returns(
          T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol)
        )
      end
      attr_accessor :future_usage

      # Filter cards by whether they carry the payer identity document their payment
      # provider requires. Payment methods that are not cards are unaffected.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :has_payer_document

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The unique identifier of the member to list payment methods for. Omit this and
      # company_id to list your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # Only return payment methods of these types. Pass the eligible `type` values from
      # the payment method types catalogue so the list holds nothing the purchase cannot
      # take. An empty list returns no payment methods.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]))
      end
      attr_accessor :payment_method_types

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          broken: T.nilable(T::Boolean),
          card_brands: T.nilable(T::Array[WhopSDK::CardBrands::OrSymbol]),
          card_funding_types:
            T.nilable(
              T::Array[
                WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
              ]
            ),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          expired: T.nilable(T::Boolean),
          first: T.nilable(Integer),
          future_usage:
            T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol),
          has_payer_document: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          member_id: T.nilable(String),
          payment_method_types:
            T.nilable(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        company_id: nil,
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Filter by expiry. Only a card can expire, so `false` keeps every payment method
        # that is not past its expiration month and `true` returns expired cards alone.
        expired: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # How a payment method will be charged after the buyer leaves — the same
        # vocabulary as a confirmation token's setup_future_usage.
        future_usage: nil,
        # Filter cards by whether they carry the payer identity document their payment
        # provider requires. Payment methods that are not cards are unaffected.
        has_payer_document: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for. Omit this and
        # company_id to list your own saved payment methods.
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
            after: T.nilable(String),
            before: T.nilable(String),
            broken: T.nilable(T::Boolean),
            card_brands: T.nilable(T::Array[WhopSDK::CardBrands::OrSymbol]),
            card_funding_types:
              T.nilable(
                T::Array[
                  WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
                ]
              ),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            expired: T.nilable(T::Boolean),
            first: T.nilable(Integer),
            future_usage:
              T.nilable(
                WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol
              ),
            has_payer_document: T.nilable(T::Boolean),
            last: T.nilable(Integer),
            member_id: T.nilable(String),
            payment_method_types:
              T.nilable(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]),
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

      # How a payment method will be charged after the buyer leaves — the same
      # vocabulary as a confirmation token's setup_future_usage.
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
