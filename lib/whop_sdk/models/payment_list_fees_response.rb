# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list_fees
    class PaymentListFeesResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute amount
      #   The value or amount to display for the fee.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute currency
      #   The currency of the fee.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute name
      #   The label to display for the fee.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   The specific origin of the fee, if applicable.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListFeesResponse::Type]
      required :type, enum: -> { WhopSDK::Models::PaymentListFeesResponse::Type }

      # @!method initialize(amount:, currency:, name:, type:)
      #   Represents a fee related to a payment
      #
      #   @param amount [Float] The value or amount to display for the fee.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the fee.
      #
      #   @param name [String] The label to display for the fee.
      #
      #   @param type [Symbol, WhopSDK::Models::PaymentListFeesResponse::Type] The specific origin of the fee, if applicable.

      # The specific origin of the fee, if applicable.
      #
      # @see WhopSDK::Models::PaymentListFeesResponse#type
      module Type
        extend WhopSDK::Internal::Type::Enum

        STRIPE_DOMESTIC_PROCESSING_FEE = :stripe_domestic_processing_fee
        STRIPE_INTERNATIONAL_PROCESSING_FEE = :stripe_international_processing_fee
        STRIPE_FIXED_PROCESSING_FEE = :stripe_fixed_processing_fee
        STRIPE_BILLING_FEE = :stripe_billing_fee
        STRIPE_RADAR_FEE = :stripe_radar_fee
        SALES_TAX_REMITTANCE = :sales_tax_remittance
        SALES_TAX_REMITTANCE_REVERSAL = :sales_tax_remittance_reversal
        STRIPE_SALES_TAX_FEE = :stripe_sales_tax_fee
        WHOP_PROCESSING_FEE = :whop_processing_fee
        MARKETPLACE_AFFILIATE_FEE = :marketplace_affiliate_fee
        AFFILIATE_FEE = :affiliate_fee
        CRYPTO_FEE = :crypto_fee
        STRIPE_STANDARD_PROCESSING_FEE = :stripe_standard_processing_fee
        PAYPAL_FEE = :paypal_fee
        STRIPE_PAYOUT_FEE = :stripe_payout_fee
        DISPUTE_FEE = :dispute_fee
        DISPUTE_ALERT_FEE = :dispute_alert_fee
        APPLE_PROCESSING_FEE = :apple_processing_fee
        BUYER_FEE = :buyer_fee
        SEZZLE_PROCESSING_FEE = :sezzle_processing_fee
        SPLITIT_PROCESSING_FEE = :splitit_processing_fee
        PLATFORM_BALANCE_PROCESSING_FEE = :platform_balance_processing_fee
        PAYMENT_PROCESSING_PERCENTAGE_FEE = :payment_processing_percentage_fee
        PAYMENT_PROCESSING_FIXED_FEE = :payment_processing_fixed_fee
        CROSS_BORDER_PERCENTAGE_FEE = :cross_border_percentage_fee
        FX_PERCENTAGE_FEE = :fx_percentage_fee
        ORCHESTRATION_PERCENTAGE_FEE = :orchestration_percentage_fee
        THREE_DS_FIXED_FEE = :three_ds_fixed_fee
        BILLING_PERCENTAGE_FEE = :billing_percentage_fee
        REVSHARE_PERCENTAGE_FEE = :revshare_percentage_fee

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
