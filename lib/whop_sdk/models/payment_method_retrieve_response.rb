# frozen_string_literal: true

module WhopSDK
  module Models
    # A payment method with no additional properties
    #
    # @see WhopSDK::Resources::PaymentMethods#retrieve
    module PaymentMethodRetrieveResponse
      extend WhopSDK::Internal::Type::Union

      discriminator :typename

      # A payment method with no additional properties
      variant :BasePaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod }

      # The card for the payment method
      variant :CardPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod }

      # The bank account for the payment method
      variant :UsBankAccountPaymentMethod,
              -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod }

      # The Cash App details for the payment method
      variant :CashappPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod }

      # The iDEAL details for the payment method
      variant :IdealPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod }

      # The SEPA Direct Debit details for the payment method
      variant :SepaDebitPaymentMethod,
              -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod }

      class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :BasePaymentMethod]
        required :typename, const: :BasePaymentMethod

        # @!method initialize(id:, created_at:, payment_method_type:, typename: :BasePaymentMethod)
        #   A payment method with no additional properties
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param typename [Symbol, :BasePaymentMethod] The typename of this object
      end

      class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card details associated with this payment method
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card]
        required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card }

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :CardPaymentMethod]
        required :typename, const: :CardPaymentMethod

        # @!method initialize(id:, card:, created_at:, payment_method_type:, typename: :CardPaymentMethod)
        #   The card for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card] The card details associated with this payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param typename [Symbol, :CardPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   Possible card brands that a payment token can have
          #
          #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
          required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

          # @!attribute exp_month
          #   Card expiration month, like 03 for March.
          #
          #   @return [Integer, nil]
          required :exp_month, Integer, nil?: true

          # @!attribute exp_year
          #   Card expiration year, like 27 for 2027.
          #
          #   @return [Integer, nil]
          required :exp_year, Integer, nil?: true

          # @!attribute last4
          #   Last four digits of the card.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, last4:)
          #   The card details associated with this payment method
          #
          #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param exp_month [Integer, nil] Card expiration month, like 03 for March.
          #
          #   @param exp_year [Integer, nil] Card expiration year, like 27 for 2027.
          #
          #   @param last4 [String, nil] Last four digits of the card.
        end
      end

      class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :UsBankAccountPaymentMethod]
        required :typename, const: :UsBankAccountPaymentMethod

        # @!attribute us_bank_account
        #   The bank details associated with this payment method
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount]
        required :us_bank_account,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount }

        # @!method initialize(id:, created_at:, payment_method_type:, us_bank_account:, typename: :UsBankAccountPaymentMethod)
        #   The bank account for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param us_bank_account [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount] The bank details associated with this payment method
        #
        #   @param typename [Symbol, :UsBankAccountPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod#us_bank_account
        class UsBankAccount < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_type
          #   The type of account
          #
          #   @return [String]
          required :account_type, String

          # @!attribute bank_name
          #   The name of the bank
          #
          #   @return [String]
          required :bank_name, String

          # @!attribute last4
          #   The last 4 digits of the account number
          #
          #   @return [String]
          required :last4, String

          # @!method initialize(account_type:, bank_name:, last4:)
          #   The bank details associated with this payment method
          #
          #   @param account_type [String] The type of account
          #
          #   @param bank_name [String] The name of the bank
          #
          #   @param last4 [String] The last 4 digits of the account number
        end
      end

      class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute cashapp
        #   The Cash App details associated with this payment method
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp]
        required :cashapp, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp }

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :CashappPaymentMethod]
        required :typename, const: :CashappPaymentMethod

        # @!method initialize(id:, cashapp:, created_at:, payment_method_type:, typename: :CashappPaymentMethod)
        #   The Cash App details for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param cashapp [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp] The Cash App details associated with this payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param typename [Symbol, :CashappPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod#cashapp
        class Cashapp < WhopSDK::Internal::Type::BaseModel
          # @!attribute buyer_id
          #   A unique and immutable identifier assigned by Cash App to every buyer.
          #
          #   @return [String, nil]
          required :buyer_id, String, nil?: true

          # @!attribute cashtag
          #   A public identifier for buyers using Cash App.
          #
          #   @return [String, nil]
          required :cashtag, String, nil?: true

          # @!method initialize(buyer_id:, cashtag:)
          #   The Cash App details associated with this payment method
          #
          #   @param buyer_id [String, nil] A unique and immutable identifier assigned by Cash App to every buyer.
          #
          #   @param cashtag [String, nil] A public identifier for buyers using Cash App.
        end
      end

      class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute ideal
        #   The iDEAL details associated with this payment method
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal]
        required :ideal, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal }

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :IdealPaymentMethod]
        required :typename, const: :IdealPaymentMethod

        # @!method initialize(id:, created_at:, ideal:, payment_method_type:, typename: :IdealPaymentMethod)
        #   The iDEAL details for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param ideal [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal] The iDEAL details associated with this payment method
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param typename [Symbol, :IdealPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod#ideal
        class Ideal < WhopSDK::Internal::Type::BaseModel
          # @!attribute bank
          #   The customer's bank.
          #
          #   @return [String, nil]
          required :bank, String, nil?: true

          # @!attribute bic
          #   The Bank Identifier Code of the customer's bank.
          #
          #   @return [String, nil]
          required :bic, String, nil?: true

          # @!method initialize(bank:, bic:)
          #   The iDEAL details associated with this payment method
          #
          #   @param bank [String, nil] The customer's bank.
          #
          #   @param bic [String, nil] The Bank Identifier Code of the customer's bank.
        end
      end

      class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payment method
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the payment method was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_method_type
        #   The type of the payment method
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute sepa_debit
        #   The SEPA Direct Debit details associated with this payment method
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit]
        required :sepa_debit,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :SepaDebitPaymentMethod]
        required :typename, const: :SepaDebitPaymentMethod

        # @!method initialize(id:, created_at:, payment_method_type:, sepa_debit:, typename: :SepaDebitPaymentMethod)
        #   The SEPA Direct Debit details for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param sepa_debit [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit] The SEPA Direct Debit details associated with this payment method
        #
        #   @param typename [Symbol, :SepaDebitPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod#sepa_debit
        class SepaDebit < WhopSDK::Internal::Type::BaseModel
          # @!attribute bank_code
          #   Bank code of the bank associated with the account.
          #
          #   @return [String, nil]
          required :bank_code, String, nil?: true

          # @!attribute branch_code
          #   Branch code of the bank associated with the account.
          #
          #   @return [String, nil]
          required :branch_code, String, nil?: true

          # @!attribute country
          #   Two-letter ISO code representing the country the bank account is located in.
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute last4
          #   Last four digits of the IBAN.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(bank_code:, branch_code:, country:, last4:)
          #   The SEPA Direct Debit details associated with this payment method
          #
          #   @param bank_code [String, nil] Bank code of the bank associated with the account.
          #
          #   @param branch_code [String, nil] Branch code of the bank associated with the account.
          #
          #   @param country [String, nil] Two-letter ISO code representing the country the bank account is located in.
          #
          #   @param last4 [String, nil] Last four digits of the IBAN.
        end
      end

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod)]
    end
  end
end
