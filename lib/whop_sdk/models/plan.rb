# frozen_string_literal: true

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the plan, which will look like plan\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   The number of days between recurring charges. Null for one-time plans
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

      # @!attribute collect_tax
      #   Whether tax is collected on purchases of this plan
      #
      #   @return [Boolean]
      required :collect_tax, WhopSDK::Internal::Type::Boolean

      # @!attribute company
      #   The company that sells this plan, an object with an id and title. Null for
      #   standalone invoice plans
      #
      #   @return [Object, nil]
      required :company, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute created_at
      #   When the plan was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   The three-letter ISO currency code all prices on this plan are denominated in
      #
      #   @return [Symbol, WhopSDK::Models::Plan::Currency]
      required :currency, enum: -> { WhopSDK::Plan::Currency }

      # @!attribute custom_fields
      #   Custom input fields displayed on the checkout form, objects with id, field_type,
      #   name, order, placeholder and required
      #
      #   @return [Array<Object>]
      required :custom_fields, WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute description
      #   A text description of the plan visible to customers
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   The number of days until the membership expires, for expiration-based plans
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute initial_price
      #   The initial purchase price in the plan's currency
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes visible only to authorized team members
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice this plan was generated for, an object with an id. Null unless the
      #   plan was created for an invoice
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   The number of active memberships on this plan. Only visible to authorized team
      #   members
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the plan, an object with enabled,
      #   disabled and include_platform_defaults. Null if the plan uses default settings
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   The billing model for this plan: 'renewal' for recurring subscriptions or
      #   'one_time' for single payments
      #
      #   @return [Symbol, WhopSDK::Models::Plan::PlanType]
      required :plan_type, enum: -> { WhopSDK::Plan::PlanType }

      # @!attribute product
      #   The product this plan belongs to, an object with an id and title. Null for
      #   standalone plans
      #
      #   @return [Object, nil]
      required :product, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute purchase_url
      #   The full URL where customers can purchase this plan directly
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::Plan::ReleaseMethod }

      # @!attribute renewal_price
      #   The recurring price charged every billing period in the plan's currency
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   The number of installment payments required before the subscription pauses
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   The number of units available for purchase. Only visible to authorized team
      #   members
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute tax_type
      #   How tax is handled for this plan: 'inclusive', 'exclusive', or 'unspecified'
      #
      #   @return [String]
      required :tax_type, String

      # @!attribute three_ds_level
      #   The 3D Secure behavior for this plan. Null means the plan inherits the account
      #   default
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil]
      required :three_ds_level, enum: -> { WhopSDK::Plan::ThreeDSLevel }, nil?: true

      # @!attribute title
      #   The display name of the plan shown to customers
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days before the first charge on a recurring plan
      #
      #   @return [Float, nil]
      required :trial_period_days, Float, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view
      #
      #   @return [Symbol, WhopSDK::Models::Plan::Visibility]
      required :visibility, enum: -> { WhopSDK::Plan::Visibility }

      # @!method initialize(id:, adaptive_pricing_enabled:, billing_period:, collect_tax:, company:, created_at:, currency:, custom_fields:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, tax_type:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Plan}
      #   for more details.
      #
      #   @param id [String] The ID of the plan, which will look like plan\_******\*******
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing
      #
      #   @param billing_period [Float, nil] The number of days between recurring charges. Null for one-time plans
      #
      #   @param collect_tax [Boolean] Whether tax is collected on purchases of this plan
      #
      #   @param company [Object, nil] The company that sells this plan, an object with an id and title. Null for stand
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp
      #
      #   @param currency [Symbol, WhopSDK::Models::Plan::Currency] The three-letter ISO currency code all prices on this plan are denominated in
      #
      #   @param custom_fields [Array<Object>] Custom input fields displayed on the checkout form, objects with id, field_type,
      #
      #   @param description [String, nil] A text description of the plan visible to customers
      #
      #   @param expiration_days [Float, nil] The number of days until the membership expires, for expiration-based plans
      #
      #   @param initial_price [Float] The initial purchase price in the plan's currency
      #
      #   @param internal_notes [String, nil] Private notes visible only to authorized team members
      #
      #   @param invoice [Object, nil] The invoice this plan was generated for, an object with an id. Null unless the p
      #
      #   @param member_count [Float, nil] The number of active memberships on this plan. Only visible to authorized team m
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan
      #
      #   @param payment_method_configuration [Object, nil] The explicit payment method configuration for the plan, an object with enabled,
      #
      #   @param plan_type [Symbol, WhopSDK::Models::Plan::PlanType] The billing model for this plan: 'renewal' for recurring subscriptions or 'one_t
      #
      #   @param product [Object, nil] The product this plan belongs to, an object with an id and title. Null for stand
      #
      #   @param purchase_url [String] The full URL where customers can purchase this plan directly
      #
      #   @param release_method [Symbol, WhopSDK::Models::Plan::ReleaseMethod] The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      #
      #   @param renewal_price [Float] The recurring price charged every billing period in the plan's currency
      #
      #   @param split_pay_required_payments [Float, nil] The number of installment payments required before the subscription pauses
      #
      #   @param stock [Float, nil] The number of units available for purchase. Only visible to authorized team memb
      #
      #   @param tax_type [String] How tax is handled for this plan: 'inclusive', 'exclusive', or 'unspecified'
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil] The 3D Secure behavior for this plan. Null means the plan inherits the account d
      #
      #   @param title [String, nil] The display name of the plan shown to customers
      #
      #   @param trial_period_days [Float, nil] The number of free trial days before the first charge on a recurring plan
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp
      #
      #   @param visibility [Symbol, WhopSDK::Models::Plan::Visibility] Whether the plan is visible to customers or hidden from public view

      # The three-letter ISO currency code all prices on this plan are denominated in
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

      # The billing model for this plan: 'renewal' for recurring subscriptions or
      # 'one_time' for single payments
      #
      # @see WhopSDK::Models::Plan#plan_type
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        RENEWAL = :renewal
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      #
      # @see WhopSDK::Models::Plan#release_method
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        BUY_NOW = :buy_now
        WAITLIST = :waitlist

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The 3D Secure behavior for this plan. Null means the plan inherits the account
      # default
      #
      # @see WhopSDK::Models::Plan#three_ds_level
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the plan is visible to customers or hidden from public view
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
