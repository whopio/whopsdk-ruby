# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#list
    class PaymentMethodListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the payment method
      #
      #   @return [String]
      required :id, String

      # @!attribute bank
      #   The bank account data associated with the payment method, if it's a bank
      #   account.
      #
      #   @return [WhopSDK::Models::PaymentMethodListResponse::Bank, nil]
      required :bank, -> { WhopSDK::Models::PaymentMethodListResponse::Bank }, nil?: true

      # @!attribute card
      #   The card data associated with the payment method, if its a debit or credit card.
      #
      #   @return [WhopSDK::Models::PaymentMethodListResponse::Card, nil]
      required :card, -> { WhopSDK::Models::PaymentMethodListResponse::Card }, nil?: true

      # @!attribute created_at
      #   The date and time the payment method was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute payment_method_type
      #   The payment method type of the payment method
      #
      #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
      required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

      # @!method initialize(id:, bank:, card:, created_at:, payment_method_type:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentMethodListResponse} for more details.
      #
      #   A stored payment method used to process payments. This could be a credit/debit
      #   card, bank account, PayPal wallet, etc.
      #
      #   @param id [String] The ID of the payment method
      #
      #   @param bank [WhopSDK::Models::PaymentMethodListResponse::Bank, nil] The bank account data associated with the payment method, if it's a bank account
      #
      #   @param card [WhopSDK::Models::PaymentMethodListResponse::Card, nil] The card data associated with the payment method, if its a debit or credit card.
      #
      #   @param created_at [Time] The date and time the payment method was created
      #
      #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The payment method type of the payment method

      # @see WhopSDK::Models::PaymentMethodListResponse#bank
      class Bank < WhopSDK::Internal::Type::BaseModel
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
        #   The bank account data associated with the payment method, if it's a bank
        #   account.
        #
        #   @param account_type [String] The type of account
        #
        #   @param bank_name [String] The name of the bank
        #
        #   @param last4 [String] The last 4 digits of the account number
      end

      # @see WhopSDK::Models::PaymentMethodListResponse#card
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
        #   The card data associated with the payment method, if its a debit or credit card.
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
  end
end
