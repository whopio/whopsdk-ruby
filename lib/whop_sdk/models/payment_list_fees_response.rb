# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list_fees
    class PaymentListFeesResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::PaymentListFeesResponse::Data>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PaymentListFeesResponse::Data] }

      # @!attribute page_info
      #
      #   @return [WhopSDK::Models::PaymentListFeesResponse::PageInfo]
      required :page_info, -> { WhopSDK::Models::PaymentListFeesResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<WhopSDK::Models::PaymentListFeesResponse::Data>]
      #   @param page_info [WhopSDK::Models::PaymentListFeesResponse::PageInfo]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The fee in the currency it was collected in.
        #
        #   @return [WhopSDK::Models::PaymentListFeesResponse::Data::Amount]
        required :amount, -> { WhopSDK::Models::PaymentListFeesResponse::Data::Amount }

        # @!attribute collected_at
        #   When the fee was collected, as an ISO 8601 timestamp, or null when it has not
        #   been.
        #
        #   @return [String, nil]
        required :collected_at, String, nil?: true

        # @!attribute description
        #   A longer explanation of the fee, when there is one.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute label
        #   The name the dashboard shows for this fee.
        #
        #   @return [String]
        required :label, String

        # @!attribute origin
        #   The specific fee this line is, such as `payment_processing_percentage_fee` or
        #   `revshare_percentage_fee`.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentListFeesResponse::Data::Origin]
        required :origin, enum: -> { WhopSDK::Models::PaymentListFeesResponse::Data::Origin }

        # @!attribute settlement_amount
        #   The fee converted to the payment's settlement currency, so lines can be totalled
        #   against the payment.
        #
        #   @return [WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount]
        required :settlement_amount, -> { WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount }

        # @!attribute type
        #   The family the fee belongs to: `whop_fee`, `processing_fee`,
        #   `affiliate_program_fee`, or `other_fee`.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentListFeesResponse::Data::Type]
        required :type, enum: -> { WhopSDK::Models::PaymentListFeesResponse::Data::Type }

        # @!method initialize(amount:, collected_at:, description:, label:, origin:, settlement_amount:, type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentListFeesResponse::Data} for more details.
        #
        #   @param amount [WhopSDK::Models::PaymentListFeesResponse::Data::Amount] The fee in the currency it was collected in.
        #
        #   @param collected_at [String, nil] When the fee was collected, as an ISO 8601 timestamp, or null when it has not be
        #
        #   @param description [String, nil] A longer explanation of the fee, when there is one.
        #
        #   @param label [String] The name the dashboard shows for this fee.
        #
        #   @param origin [Symbol, WhopSDK::Models::PaymentListFeesResponse::Data::Origin] The specific fee this line is, such as `payment_processing_percentage_fee` or `r
        #
        #   @param settlement_amount [WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount] The fee converted to the payment's settlement currency, so lines can be totalled
        #
        #   @param type [Symbol, WhopSDK::Models::PaymentListFeesResponse::Data::Type] The family the fee belongs to: `whop_fee`, `processing_fee`, `affiliate*program*

        # @see WhopSDK::Models::PaymentListFeesResponse::Data#amount
        class Amount < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount in major units, as an exact decimal string — `"10.00"` is ten
          #   dollars. A string so no float rounds it in transit.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   Three-letter ISO 4217 currency code, lowercase.
          #
          #   @return [String]
          required :currency, String

          # @!attribute decimals
          #   How many decimal places the amount CARRIES — the precision the charge itself
          #   runs at.
          #
          #   @return [Integer]
          required :decimals, Integer

          # @!attribute display_decimals
          #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
          #   and `0`. Format the number in your own locale using this.
          #
          #   @return [Integer]
          required :display_decimals, Integer

          # @!method initialize(amount:, currency:, decimals:, display_decimals:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentListFeesResponse::Data::Amount} for more details.
          #
          #   The fee in the currency it was collected in.
          #
          #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
          #
          #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
          #
          #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
          #
          #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
        end

        # The specific fee this line is, such as `payment_processing_percentage_fee` or
        # `revshare_percentage_fee`.
        #
        # @see WhopSDK::Models::PaymentListFeesResponse::Data#origin
        module Origin
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
          DISPUTE_REPRESENTMENT_FEE = :dispute_representment_fee
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
          APPLICATION_FEE = :application_fee
          HIGH_RISK_MERCHANT_FEE = :high_risk_merchant_fee

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PaymentListFeesResponse::Data#settlement_amount
        class SettlementAmount < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount in major units, as an exact decimal string — `"10.00"` is ten
          #   dollars. A string so no float rounds it in transit.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   Three-letter ISO 4217 currency code, lowercase.
          #
          #   @return [String]
          required :currency, String

          # @!attribute decimals
          #   How many decimal places the amount CARRIES — the precision the charge itself
          #   runs at.
          #
          #   @return [Integer]
          required :decimals, Integer

          # @!attribute display_decimals
          #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
          #   and `0`. Format the number in your own locale using this.
          #
          #   @return [Integer]
          required :display_decimals, Integer

          # @!method initialize(amount:, currency:, decimals:, display_decimals:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentListFeesResponse::Data::SettlementAmount} for more
          #   details.
          #
          #   The fee converted to the payment's settlement currency, so lines can be totalled
          #   against the payment.
          #
          #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
          #
          #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
          #
          #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
          #
          #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
        end

        # The family the fee belongs to: `whop_fee`, `processing_fee`,
        # `affiliate_program_fee`, or `other_fee`.
        #
        # @see WhopSDK::Models::PaymentListFeesResponse::Data#type
        module Type
          extend WhopSDK::Internal::Type::Enum

          WHOP_FEE = :whop_fee
          PROCESSING_FEE = :processing_fee
          AFFILIATE_PROGRAM_FEE = :affiliate_program_fee
          OTHER_FEE = :other_fee

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::PaymentListFeesResponse#page_info
      class PageInfo < WhopSDK::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, WhopSDK::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, WhopSDK::Internal::Type::Boolean

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
