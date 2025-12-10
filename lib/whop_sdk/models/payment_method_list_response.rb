# frozen_string_literal: true

module WhopSDK
  module Models
    # A payment method with no additional properties
    #
    # @see WhopSDK::Resources::PaymentMethods#list
    module PaymentMethodListResponse
      extend WhopSDK::Internal::Type::Union

      discriminator :typename

      # A payment method with no additional properties
      variant :BasePaymentMethod, -> { WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod }

      # The card for the payment method
      variant :CardPaymentMethod, -> { WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod }

      # The bank account for the payment method
      variant :UsBankAccountPaymentMethod,
              -> { WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod }

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
        #   @return [WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card]
        required :card, -> { WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card }

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
        #   @param card [WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card] The card details associated with this payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param typename [Symbol, :CardPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod#card
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
        #   @return [WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount]
        required :us_bank_account,
                 -> { WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount }

        # @!method initialize(id:, created_at:, payment_method_type:, us_bank_account:, typename: :UsBankAccountPaymentMethod)
        #   The bank account for the payment method
        #
        #   @param id [String] The ID of the payment method
        #
        #   @param created_at [Time] When the payment method was created
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of the payment method
        #
        #   @param us_bank_account [WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount] The bank details associated with this payment method
        #
        #   @param typename [Symbol, :UsBankAccountPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod#us_bank_account
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

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod)]
    end
  end
end
