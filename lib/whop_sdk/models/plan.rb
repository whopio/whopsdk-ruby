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
      #   @return [WhopSDK::Models::Plan::Account, nil]
      required :account, -> { WhopSDK::Plan::Account }, nil?: true

      # @!attribute adaptive_pricing_enabled
      #   Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      #   processor compatibility or feature flags.
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   Number of days between recurring charges, such as 30 for monthly or 365 for
      #   annual. `null` for one-time plans.
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

      # @!attribute cancel_discount_intervals
      #   Billing intervals the cancellation discount applies to (`0` forever, `1` first
      #   payment, or a month count). `null` when none is offered or the actor lacks the
      #   `plan:basic:read` scope.
      #
      #   @return [Float, nil]
      required :cancel_discount_intervals, Float, nil?: true

      # @!attribute cancel_discount_percentage
      #   Cancellation discount as a whole-number percentage. `null` when none is offered
      #   or the actor lacks the `plan:basic:read` scope.
      #
      #   @return [Float, nil]
      required :cancel_discount_percentage, Float, nil?: true

      # @!attribute checkout_styling
      #   Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      #   `border_style`); `null` inherits the account default.
      #
      #   @return [Object, nil]
      required :checkout_styling, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute collect_tax
      #   Whether tax is collected on purchases of this plan, based on the account's tax
      #   configuration.
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

      # @!attribute deletable
      #   Whether the plan can be deleted (it has no memberships or waitlist entries).
      #   `null` unless the actor has the `plan:basic:read` scope on the plan's account.
      #
      #   @return [Boolean, nil]
      required :deletable, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute description
      #   Customer-visible plan description. Maximum 1000 characters. `null` if no
      #   description is set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute effective_payment_method_configuration
      #   The configuration governing a checkout for this plan, resolved through every
      #   layer (the plan's own and the account's) — the shape a session's
      #   `payment_method_configuration` carries. Apply it over the payment method types
      #   catalogue for the offerable set. `null` means platform defaults;
      #   `payment_method_configuration` stays the plan's own editable override.
      #
      #   @return [WhopSDK::Models::Plan::EffectivePaymentMethodConfiguration, nil]
      required :effective_payment_method_configuration,
               -> { WhopSDK::Plan::EffectivePaymentMethodConfiguration },
               nil?: true

      # @!attribute expiration_days
      #   Access duration in days for expiration-based plans, such as 365 for a one-year
      #   pass. `null` for plans without an expiration.
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute formatted_price
      #   Human-readable price for display (currency + interval), e.g. "$10 / month".
      #
      #   @return [String]
      required :formatted_price, String

      # @!attribute image
      #   Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      #   image is set.
      #
      #   @return [Object, nil]
      required :image, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute initial_price
      #   Initial purchase price in plan currency.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes not shown to customers. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   Active memberships through this plan. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan. Included in webhook payloads for
      #   payment and membership events. Maximum 50 keys, 100 characters per key, 500
      #   characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
      #   set, override the product's checkout call to action for this plan.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute offer_cancel_discount
      #   Whether a cancellation discount is offered. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [Boolean, nil]
      required :offer_cancel_discount, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute payment_method_configuration
      #   Payment method configuration (`enabled`, `disabled`,
      #   `include_platform_defaults`); `null` when plan uses default settings.
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   Billing model for this plan.
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
      #   Sales method for this plan.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::Plan::ReleaseMethod }

      # @!attribute renewal_price
      #   Recurring price charged every billing period.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   Installment payments required before the subscription pauses. Must be greater
      #   than 1. `null` if split pay is not configured.
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   Units available for purchase. `null` unless the actor has the `plan:basic:read`
      #   scope on the plan's account.
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute strike_through_initial_price
      #   Original initial price shown with a strikethrough, in the plan's currency.
      #   `null` when no strikethrough is set.
      #
      #   @return [Float, nil]
      required :strike_through_initial_price, Float, nil?: true

      # @!attribute strike_through_renewal_price
      #   Original renewal price shown with a strikethrough, in the plan's currency.
      #   `null` when no strikethrough is set.
      #
      #   @return [Float, nil]
      required :strike_through_renewal_price, Float, nil?: true

      # @!attribute tax_type
      #   How tax is handled for this plan, including whether tax is included in the
      #   price, added at checkout, or not configured.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::TaxType]
      required :tax_type, enum: -> { WhopSDK::Plan::TaxType }

      # @!attribute three_ds_level
      #   3D Secure behavior for this plan; `null` inherits the account default.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil]
      required :three_ds_level, enum: -> { WhopSDK::Plan::ThreeDSLevel }, nil?: true

      # @!attribute title
      #   Plan display name shown to customers. Maximum 30 characters. `null` if no title
      #   has been set.
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
      #   Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      #   waitlist plans always report `true`.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Controls where this plan can be seen. When `hidden`, the plan is reachable only
      #   by its direct link.
      #
      #   @return [Symbol, WhopSDK::Models::Plan::Visibility]
      required :visibility, enum: -> { WhopSDK::Plan::Visibility }

      # @!method initialize(id:, account:, adaptive_pricing_enabled:, billing_period:, cancel_discount_intervals:, cancel_discount_percentage:, checkout_styling:, collect_tax:, created_at:, currency:, custom_fields:, deletable:, description:, effective_payment_method_configuration:, expiration_days:, formatted_price:, image:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, offer_cancel_discount:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, strike_through_initial_price:, strike_through_renewal_price:, tax_type:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Plan}
      #   for more details.
      #
      #   @param id [String] Plan ID, prefixed `plan_`.
      #
      #   @param account [WhopSDK::Models::Plan::Account, nil] Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      #
      #   @param billing_period [Float, nil] Number of days between recurring charges, such as 30 for monthly or 365 for annu
      #
      #   @param cancel_discount_intervals [Float, nil] Billing intervals the cancellation discount applies to (`0` forever, `1` first p
      #
      #   @param cancel_discount_percentage [Float, nil] Cancellation discount as a whole-number percentage. `null` when none is offered
      #
      #   @param checkout_styling [Object, nil] Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      #
      #   @param collect_tax [Boolean] Whether tax is collected on purchases of this plan, based on the account's tax c
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::Plan::Currency] Three-letter ISO currency code for this plan's prices.
      #
      #   @param custom_fields [Array<WhopSDK::Models::Plan::CustomField>]
      #
      #   @param deletable [Boolean, nil] Whether the plan can be deleted (it has no memberships or waitlist entries). `nu
      #
      #   @param description [String, nil] Customer-visible plan description. Maximum 1000 characters. `null` if no descrip
      #
      #   @param effective_payment_method_configuration [WhopSDK::Models::Plan::EffectivePaymentMethodConfiguration, nil] The configuration governing a checkout for this plan, resolved through every lay
      #
      #   @param expiration_days [Float, nil] Access duration in days for expiration-based plans, such as 365 for a one-year p
      #
      #   @param formatted_price [String] Human-readable price for display (currency + interval), e.g. "$10 / month".
      #
      #   @param image [Object, nil] Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      #
      #   @param initial_price [Float] Initial purchase price in plan currency.
      #
      #   @param internal_notes [String, nil] Private notes not shown to customers. `null` unless the actor has the `plan:basi
      #
      #   @param invoice [Object, nil] Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @param member_count [Float, nil] Active memberships through this plan. `null` unless the actor has the `plan:basi
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan. Included in webhook payloads for paym
      #
      #   @param offer_cancel_discount [Boolean, nil] Whether a cancellation discount is offered. `null` unless the actor has the `pla
      #
      #   @param payment_method_configuration [Object, nil] Payment method configuration (`enabled`, `disabled`, `include_platform_defaults`
      #
      #   @param plan_type [Symbol, WhopSDK::Models::Plan::PlanType] Billing model for this plan.
      #
      #   @param product [Object, nil] Product this plan belongs to; `null` for standalone plans.
      #
      #   @param purchase_url [String] URL where customers can purchase this plan directly.
      #
      #   @param release_method [Symbol, WhopSDK::Models::Plan::ReleaseMethod] Sales method for this plan.
      #
      #   @param renewal_price [Float] Recurring price charged every billing period.
      #
      #   @param split_pay_required_payments [Float, nil] Installment payments required before the subscription pauses. Must be greater th
      #
      #   @param stock [Float, nil] Units available for purchase. `null` unless the actor has the `plan:basic:read`
      #
      #   @param strike_through_initial_price [Float, nil] Original initial price shown with a strikethrough, in the plan's currency. `null
      #
      #   @param strike_through_renewal_price [Float, nil] Original renewal price shown with a strikethrough, in the plan's currency. `null
      #
      #   @param tax_type [Symbol, WhopSDK::Models::Plan::TaxType] How tax is handled for this plan, including whether tax is included in the price
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::Plan::ThreeDSLevel, nil] 3D Secure behavior for this plan; `null` inherits the account default.
      #
      #   @param title [String, nil] Plan display name shown to customers. Maximum 30 characters. `null` if no title
      #
      #   @param trial_period_days [Float, nil] Free trial days before the first renewal charge. `null` if no trial is configure
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Plan::Visibility] Controls where this plan can be seen. When `hidden`, the plan is reachable only

      # @see WhopSDK::Models::Plan#account
      class Account < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Account that sells this plan; `null` for standalone invoice plans.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param title [String] Account display name.
      end

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
        #   Custom field ID, prefixed `field_`.
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
        #   Placeholder text shown in the empty field. `null` if none is set.
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
        #   @param id [String] Custom field ID, prefixed `field_`.
        #
        #   @param field_type [Symbol, WhopSDK::Models::Plan::CustomField::FieldType] Custom field input type.
        #
        #   @param name [String] Field label shown to customer at checkout.
        #
        #   @param order [Float] Field position on checkout form.
        #
        #   @param placeholder [String, nil] Placeholder text shown in the empty field. `null` if none is set.
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

      # @see WhopSDK::Models::Plan#effective_payment_method_configuration
      class EffectivePaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #
        #   @return [Array<String>]
        required :disabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute enabled
        #
        #   @return [Array<String>]
        required :enabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_platform_defaults
        #   Whether Whop's default set is the starting point. When `false`, only `enabled`
        #   is offered.
        #
        #   @return [Boolean]
        required :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled:, enabled:, include_platform_defaults:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Plan::EffectivePaymentMethodConfiguration} for more details.
        #
        #   The configuration governing a checkout for this plan, resolved through every
        #   layer (the plan's own and the account's) — the shape a session's
        #   `payment_method_configuration` carries. Apply it over the payment method types
        #   catalogue for the offerable set. `null` means platform defaults;
        #   `payment_method_configuration` stays the plan's own editable override.
        #
        #   @param disabled [Array<String>]
        #
        #   @param enabled [Array<String>]
        #
        #   @param include_platform_defaults [Boolean] Whether Whop's default set is the starting point. When `false`, only `enabled` i
      end

      # Billing model for this plan.
      #
      # @see WhopSDK::Models::Plan#plan_type
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        RENEWAL = :renewal
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sales method for this plan.
      #
      # @see WhopSDK::Models::Plan#release_method
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        BUY_NOW = :buy_now
        WAITLIST = :waitlist

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How tax is handled for this plan, including whether tax is included in the
      # price, added at checkout, or not configured.
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

      # 3D Secure behavior for this plan; `null` inherits the account default.
      #
      # @see WhopSDK::Models::Plan#three_ds_level
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
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
