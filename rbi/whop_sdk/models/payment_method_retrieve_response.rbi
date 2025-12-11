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
            WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod,
            WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod,
            WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod,
            WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod
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

      class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payment method
        sig { returns(String) }
        attr_accessor :id

        # The Cash App details associated with this payment method
        sig do
          returns(
            WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp
          )
        end
        attr_reader :cashapp

        sig do
          params(
            cashapp:
              WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp::OrHash
          ).void
        end
        attr_writer :cashapp

        # When the payment method was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The Cash App details for the payment method
        sig do
          params(
            id: String,
            cashapp:
              WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp::OrHash,
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment method
          id:,
          # The Cash App details associated with this payment method
          cashapp:,
          # When the payment method was created
          created_at:,
          # The type of the payment method
          payment_method_type:,
          # The typename of this object
          typename: :CashappPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cashapp:
                WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Cashapp < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp,
                WhopSDK::Internal::AnyHash
              )
            end

          # A unique and immutable identifier assigned by Cash App to every buyer.
          sig { returns(T.nilable(String)) }
          attr_accessor :buyer_id

          # A public identifier for buyers using Cash App.
          sig { returns(T.nilable(String)) }
          attr_accessor :cashtag

          # The Cash App details associated with this payment method
          sig do
            params(
              buyer_id: T.nilable(String),
              cashtag: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique and immutable identifier assigned by Cash App to every buyer.
            buyer_id:,
            # A public identifier for buyers using Cash App.
            cashtag:
          )
          end

          sig do
            override.returns(
              { buyer_id: T.nilable(String), cashtag: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payment method
        sig { returns(String) }
        attr_accessor :id

        # When the payment method was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The iDEAL details associated with this payment method
        sig do
          returns(
            WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal
          )
        end
        attr_reader :ideal

        sig do
          params(
            ideal:
              WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal::OrHash
          ).void
        end
        attr_writer :ideal

        # The type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The iDEAL details for the payment method
        sig do
          params(
            id: String,
            created_at: Time,
            ideal:
              WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payment method
          id:,
          # When the payment method was created
          created_at:,
          # The iDEAL details associated with this payment method
          ideal:,
          # The type of the payment method
          payment_method_type:,
          # The typename of this object
          typename: :IdealPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              ideal:
                WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Ideal < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal,
                WhopSDK::Internal::AnyHash
              )
            end

          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank

          # The Bank Identifier Code of the customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bic

          # The iDEAL details associated with this payment method
          sig do
            params(bank: T.nilable(String), bic: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # The customer's bank.
            bank:,
            # The Bank Identifier Code of the customer's bank.
            bic:
          )
          end

          sig do
            override.returns(
              { bank: T.nilable(String), bic: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod,
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

        # The SEPA Direct Debit details associated with this payment method
        sig do
          returns(
            WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit
          )
        end
        attr_reader :sepa_debit

        sig do
          params(
            sepa_debit:
              WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit::OrHash
          ).void
        end
        attr_writer :sepa_debit

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The SEPA Direct Debit details for the payment method
        sig do
          params(
            id: String,
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            sepa_debit:
              WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit::OrHash,
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
          # The SEPA Direct Debit details associated with this payment method
          sepa_debit:,
          # The typename of this object
          typename: :SepaDebitPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              sepa_debit:
                WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class SepaDebit < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit,
                WhopSDK::Internal::AnyHash
              )
            end

          # Bank code of the bank associated with the account.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank_code

          # Branch code of the bank associated with the account.
          sig { returns(T.nilable(String)) }
          attr_accessor :branch_code

          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          # Last four digits of the IBAN.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # The SEPA Direct Debit details associated with this payment method
          sig do
            params(
              bank_code: T.nilable(String),
              branch_code: T.nilable(String),
              country: T.nilable(String),
              last4: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Bank code of the bank associated with the account.
            bank_code:,
            # Branch code of the bank associated with the account.
            branch_code:,
            # Two-letter ISO code representing the country the bank account is located in.
            country:,
            # Last four digits of the IBAN.
            last4:
          )
          end

          sig do
            override.returns(
              {
                bank_code: T.nilable(String),
                branch_code: T.nilable(String),
                country: T.nilable(String),
                last4: T.nilable(String)
              }
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
