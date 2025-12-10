# typed: strong

module WhopSDK
  module Models
    # A payment method with no additional properties
    module PaymentMethodRetrieveResponse
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod,
            WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod,
            WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod
          )
        end

      class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payment method
        sig { returns(String) }
        attr_accessor :id

        # When the payment method was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A payment method with no additional properties
        sig do
          params(
            id: String,
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment method
          id:,
          # When the payment method was created
          created_at:,
          # The type of the payment method
          payment_method_type:,
          # The typename of this object
          typename: :BasePaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end
      end

      class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payment method
        sig { returns(String) }
        attr_accessor :id

        # The card details associated with this payment method
        sig do
          returns(
            WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card::OrHash
          ).void
        end
        attr_writer :card

        # When the payment method was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The card for the payment method
        sig do
          params(
            id: String,
            card:
              WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card::OrHash,
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment method
          id:,
          # The card details associated with this payment method
          card:,
          # When the payment method was created
          created_at:,
          # The type of the payment method
          payment_method_type:,
          # The typename of this object
          typename: :CardPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              card:
                WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Card < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card,
                WhopSDK::Internal::AnyHash
              )
            end

          # Possible card brands that a payment token can have
          sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
          attr_accessor :brand

          # Card expiration month, like 03 for March.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_month

          # Card expiration year, like 27 for 2027.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_year

          # Last four digits of the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # The card details associated with this payment method
          sig do
            params(
              brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
              exp_month: T.nilable(Integer),
              exp_year: T.nilable(Integer),
              last4: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Possible card brands that a payment token can have
            brand:,
            # Card expiration month, like 03 for March.
            exp_month:,
            # Card expiration year, like 27 for 2027.
            exp_year:,
            # Last four digits of the card.
            last4:
          )
          end

          sig do
            override.returns(
              {
                brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                exp_month: T.nilable(Integer),
                exp_year: T.nilable(Integer),
                last4: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payment method
        sig { returns(String) }
        attr_accessor :id

        # When the payment method was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The bank details associated with this payment method
        sig do
          returns(
            WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount
          )
        end
        attr_reader :us_bank_account

        sig do
          params(
            us_bank_account:
              WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount::OrHash
          ).void
        end
        attr_writer :us_bank_account

        # The bank account for the payment method
        sig do
          params(
            id: String,
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            us_bank_account:
              WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount::OrHash,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment method
          id:,
          # When the payment method was created
          created_at:,
          # The type of the payment method
          payment_method_type:,
          # The bank details associated with this payment method
          us_bank_account:,
          # The typename of this object
          typename: :UsBankAccountPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol,
              us_bank_account:
                WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount
            }
          )
        end
        def to_hash
        end

        class UsBankAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount,
                WhopSDK::Internal::AnyHash
              )
            end

          # The type of account
          sig { returns(String) }
          attr_accessor :account_type

          # The name of the bank
          sig { returns(String) }
          attr_accessor :bank_name

          # The last 4 digits of the account number
          sig { returns(String) }
          attr_accessor :last4

          # The bank details associated with this payment method
          sig do
            params(
              account_type: String,
              bank_name: String,
              last4: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of account
            account_type:,
            # The name of the bank
            bank_name:,
            # The last 4 digits of the account number
            last4:
          )
          end

          sig do
            override.returns(
              { account_type: String, bank_name: String, last4: String }
            )
          end
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          T::Array[WhopSDK::Models::PaymentMethodRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
