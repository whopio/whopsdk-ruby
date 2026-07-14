# frozen_string_literal: true

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Plan ID, prefixed `plan_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @return [Object, nil]
      required :account, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   Recurring billing interval in days, such as 30 for monthly or 365 for annual.
      #   `null` for one-time plans.
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

      # @!attribute collect_tax
      #   Whether tax is collected on purchases of this plan.
      #
      #   @return [Boolean]
      required :collect_tax, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   When the plan was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Three-letter ISO currency code for this plan's prices.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::Currency]
      required :currency, enum: -> { WhopSDK::Plan::Currency }

      # @!attribute custom_fields
      #
      #   @return [Array<WhopSDK::Models::Plan::CustomField>]
      required :custom_fields, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField] }

      # @!attribute description
      #   Customer-visible plan description.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   Access duration in days for expiration-based plans.
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute initial_price
      #   Initial purchase price in plan currency.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes visible only to authorized team members.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   Active memberships through this plan, when visible to the requester.
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_method_configuration
      #   Payment method configuration (`enabled`, `disabled`,
      #   `include_platform_defaults`); `null` when plan uses default settings.
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   Billing model for this plan: `renewal` (recurring) or `one_time` (single
      #   payment).
      #
      #   @return [Symbol, WhopSDK::Models::Plan::PlanType]
      required :plan_type, enum: -> { WhopSDK::Plan::PlanType }

      # @!attribute product
      #   Product this plan belongs to; `null` for standalone plans.
      #
      #   @return [Object, nil]
      required :product, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute purchase_url
      #   URL where customers can purchase this plan directly.
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   Sales method for this plan, such as `buy_now` or `waitlist`.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::Plan::ReleaseMethod }

      # @!attribute renewal_price
      #   Recurring price charged every billing period.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   Installment payments required before the subscription pauses.
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   Units available for purchase, when visible to the requester.
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute tax_type
      #   How tax is handled for this plan.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::TaxType]
      required :tax_type, enum: -> { WhopSDK::Plan::TaxType }

      # @!attribute three_ds_level
      #   3D Secure behavior for this plan; `null` inherits account default.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil]
      required :three_ds_level, enum: -> { WhopSDK::Plan::ThreeDSLevel }, nil?: true

      # @!attribute title
      #   Plan display name shown to customers.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   Free trial days before the first renewal charge. `null` if no trial is
      #   configured or the user has already used a trial for this plan.
      #
      #   @return [Float, nil]
      required :trial_period_days, Float, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::Visibility]
      required :visibility, enum: -> { WhopSDK::Plan::Visibility }

      # @!method initialize(id:, account:, adaptive_pricing_enabled:, billing_period:, collect_tax:, created_at:, currency:, custom_fields:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, tax_type:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Plan}
      #   for more details.
      #
      #   @param id [String] Plan ID, prefixed `plan_`.
      #
      #   @param account [Object, nil] Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @param billing_period [Float, nil] Recurring billing interval in days, such as 30 for monthly or 365 for annual. `n
      #
      #   @param collect_tax [Boolean] Whether tax is collected on purchases of this plan.
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::Plan::Currency] Three-letter ISO currency code for this plan's prices.
      #
      #   @param custom_fields [Array<WhopSDK::Models::Plan::CustomField>]
      #
      #   @param description [String, nil] Customer-visible plan description.
      #
      #   @param expiration_days [Float, nil] Access duration in days for expiration-based plans.
      #
      #   @param initial_price [Float] Initial purchase price in plan currency.
      #
      #   @param internal_notes [String, nil] Private notes visible only to authorized team members.
      #
      #   @param invoice [Object, nil] Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @param member_count [Float, nil] Active memberships through this plan, when visible to the requester.
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan.
      #
      #   @param payment_method_configuration [Object, nil] Payment method configuration (`enabled`, `disabled`, `include_platform_defaults`
      #
      #   @param plan_type [Symbol, WhopSDK::Models::Plan::PlanType] Billing model for this plan: `renewal` (recurring) or `one_time` (single payment
      #
      #   @param product [Object, nil] Product this plan belongs to; `null` for standalone plans.
      #
      #   @param purchase_url [String] URL where customers can purchase this plan directly.
      #
      #   @param release_method [Symbol, WhopSDK::Models::Plan::ReleaseMethod] Sales method for this plan, such as `buy_now` or `waitlist`.
      #
      #   @param renewal_price [Float] Recurring price charged every billing period.
      #
      #   @param split_pay_required_payments [Float, nil] Installment payments required before the subscription pauses.
      #
      #   @param stock [Float, nil] Units available for purchase, when visible to the requester.
      #
      #   @param tax_type [Symbol, WhopSDK::Models::Plan::TaxType] How tax is handled for this plan.
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil] 3D Secure behavior for this plan; `null` inherits account default.
      #
      #   @param title [String, nil] Plan display name shown to customers.
      #
      #   @param trial_period_days [Float, nil] Free trial days before the first renewal charge. `null` if no trial is configure
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock.
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Plan::Visibility] Whether the plan is visible to customers or hidden from public view.

      # Three-letter ISO currency code for this plan's prices.
      #
      # @see WhopSDK::Models::Plan#currency
      module Currency
        extend WhopSDK::Internal::Type::Enum

        USD = :usd
        SGD = :sgd
        INR = :inr
        AUD = :aud
        BRL = :brl
        CAD = :cad
        DKK = :dkk
        EUR = :eur
        NOK = :nok
        GBP = :gbp
        SEK = :sek
        CHF = :chf
        HKD = :hkd
        HUF = :huf
        JPY = :jpy
        MXN = :mxn
        MYR = :myr
        PLN = :pln
        CZK = :czk
        NZD = :nzd
        AED = :aed
        ETH = :eth
        APE = :ape
        COP = :cop
        RON = :ron
        THB = :thb
        BGN = :bgn
        IDR = :idr
        DOP = :dop
        PHP = :php
        TRY = :try
        KRW = :krw
        TWD = :twd
        VND = :vnd
        PKR = :pkr
        CLP = :clp
        UYU = :uyu
        ARS = :ars
        ZAR = :zar
        DZD = :dzd
        TND = :tnd
        MAD = :mad
        KES = :kes
        KWD = :kwd
        JOD = :jod
        ALL = :all
        XCD = :xcd
        AMD = :amd
        BSD = :bsd
        BHD = :bhd
        BOB = :bob
        BAM = :bam
        KHR = :khr
        CRC = :crc
        XOF = :xof
        EGP = :egp
        ETB = :etb
        GMD = :gmd
        GHS = :ghs
        GTQ = :gtq
        GYD = :gyd
        ILS = :ils
        JMD = :jmd
        MOP = :mop
        MGA = :mga
        MUR = :mur
        MDL = :mdl
        MNT = :mnt
        NAD = :nad
        NGN = :ngn
        MKD = :mkd
        OMR = :omr
        PYG = :pyg
        PEN = :pen
        QAR = :qar
        RWF = :rwf
        SAR = :sar
        RSD = :rsd
        LKR = :lkr
        TZS = :tzs
        TTD = :ttd
        UZS = :uzs
        RUB = :rub
        BTC = :btc
        CNY = :cny
        USDT = :usdt
        KZT = :kzt
        AWG = :awg
        WHOP_USD = :whop_usd
        XAU = :xau

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Custom field ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute field_type
        #   Custom field input type.
        #
        #   @return [Symbol, WhopSDK::Models::Plan::CustomField::FieldType]
        required :field_type, enum: -> { WhopSDK::Plan::CustomField::FieldType }

        # @!attribute name
        #   Field label shown to customer at checkout.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   Field position on checkout form.
        #
        #   @return [Float]
        required :order, Float

        # @!attribute placeholder
        #   Placeholder text shown in empty field.
        #
        #   @return [String, nil]
        required :placeholder, String, nil?: true

        # @!attribute required
        #   Whether the customer must complete this field to check out.
        #
        #   @return [Boolean]
        required :required, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id:, field_type:, name:, order:, placeholder:, required:)
        #   Custom input fields collected on the checkout form.
        #
        #   @param id [String] Custom field ID.
        #
        #   @param field_type [Symbol, WhopSDK::Models::Plan::CustomField::FieldType] Custom field input type.
        #
        #   @param name [String] Field label shown to customer at checkout.
        #
        #   @param order [Float] Field position on checkout form.
        #
        #   @param placeholder [String, nil] Placeholder text shown in empty field.
        #
        #   @param required [Boolean] Whether the customer must complete this field to check out.

        # Custom field input type.
        #
        # @see WhopSDK::Models::Plan::CustomField#field_type
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TEXT = :text

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Billing model for this plan: `renewal` (recurring) or `one_time` (single
      # payment).
      #
      # @see WhopSDK::Models::Plan#plan_type
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        RENEWAL = :renewal
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sales method for this plan, such as `buy_now` or `waitlist`.
      #
      # @see WhopSDK::Models::Plan#release_method
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        BUY_NOW = :buy_now
        WAITLIST = :waitlist

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How tax is handled for this plan.
      #
      # @see WhopSDK::Models::Plan#tax_type
      module TaxType
        extend WhopSDK::Internal::Type::Enum

        INCLUSIVE = :inclusive
        EXCLUSIVE = :exclusive
        UNSPECIFIED = :unspecified

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # 3D Secure behavior for this plan; `null` inherits account default.
      #
      # @see WhopSDK::Models::Plan#three_ds_level
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the plan is visible to customers or hidden from public view.
      #
      # @see WhopSDK::Models::Plan#visibility
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        VISIBLE = :visible
        HIDDEN = :hidden
        ARCHIVED = :archived
        QUICK_LINK = :quick_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
