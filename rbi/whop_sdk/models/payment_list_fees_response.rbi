# typed: strong

module WhopSDK
  module Models
    class PaymentListFeesResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentListFeesResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The value or amount to display for the fee.
      sig { returns(Float) }
      attr_accessor :amount

      # The currency of the fee.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The label to display for the fee.
      sig { returns(String) }
      attr_accessor :name

      # The specific origin of the fee, if applicable.
      sig do
        returns(WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Represents a fee related to a payment
      sig do
        params(
          amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          name: String,
          type: WhopSDK::Models::PaymentListFeesResponse::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The value or amount to display for the fee.
        amount:,
        # The currency of the fee.
        currency:,
        # The label to display for the fee.
        name:,
        # The specific origin of the fee, if applicable.
        type:
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            currency: WhopSDK::Currency::TaggedSymbol,
            name: String,
            type: WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The specific origin of the fee, if applicable.
      module Type
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PaymentListFeesResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE_DOMESTIC_PROCESSING_FEE =
          T.let(
            :stripe_domestic_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_INTERNATIONAL_PROCESSING_FEE =
          T.let(
            :stripe_international_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_FIXED_PROCESSING_FEE =
          T.let(
            :stripe_fixed_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_BILLING_FEE =
          T.let(
            :stripe_billing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_RADAR_FEE =
          T.let(
            :stripe_radar_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        SALES_TAX_REMITTANCE =
          T.let(
            :sales_tax_remittance,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        SALES_TAX_REMITTANCE_REVERSAL =
          T.let(
            :sales_tax_remittance_reversal,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_SALES_TAX_FEE =
          T.let(
            :stripe_sales_tax_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        WHOP_PROCESSING_FEE =
          T.let(
            :whop_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        MARKETPLACE_AFFILIATE_FEE =
          T.let(
            :marketplace_affiliate_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        AFFILIATE_FEE =
          T.let(
            :affiliate_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        CRYPTO_FEE =
          T.let(
            :crypto_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_STANDARD_PROCESSING_FEE =
          T.let(
            :stripe_standard_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        PAYPAL_FEE =
          T.let(
            :paypal_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        STRIPE_PAYOUT_FEE =
          T.let(
            :stripe_payout_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        DISPUTE_FEE =
          T.let(
            :dispute_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        DISPUTE_ALERT_FEE =
          T.let(
            :dispute_alert_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        APPLE_PROCESSING_FEE =
          T.let(
            :apple_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        BUYER_FEE =
          T.let(
            :buyer_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        SEZZLE_PROCESSING_FEE =
          T.let(
            :sezzle_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        SPLITIT_PROCESSING_FEE =
          T.let(
            :splitit_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        PLATFORM_BALANCE_PROCESSING_FEE =
          T.let(
            :platform_balance_processing_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        PAYMENT_PROCESSING_PERCENTAGE_FEE =
          T.let(
            :payment_processing_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        PAYMENT_PROCESSING_FIXED_FEE =
          T.let(
            :payment_processing_fixed_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        CROSS_BORDER_PERCENTAGE_FEE =
          T.let(
            :cross_border_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        FX_PERCENTAGE_FEE =
          T.let(
            :fx_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        ORCHESTRATION_PERCENTAGE_FEE =
          T.let(
            :orchestration_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        THREE_DS_FIXED_FEE =
          T.let(
            :three_ds_fixed_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        BILLING_PERCENTAGE_FEE =
          T.let(
            :billing_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )
        REVSHARE_PERCENTAGE_FEE =
          T.let(
            :revshare_percentage_fee,
            WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PaymentListFeesResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
