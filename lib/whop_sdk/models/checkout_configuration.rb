# frozen_string_literal: true

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute affiliate_code
      #   Affiliate code applied at checkout, or `null` when none is set.
      #
      #   @return [String, nil]
      required :affiliate_code, String, nil?: true

      # @!attribute created_at
      #   When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Currency used for setup-mode payment method availability; defaults to `usd` when
      #   omitted.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Currency, nil]
      required :currency, enum: -> { WhopSDK::CheckoutConfiguration::Currency }, nil?: true

      # @!attribute effective_payment_method_configuration
      #   The configuration governing a checkout mounted from this configuration, resolved
      #   through every layer (its own overrides, the plan's, and the account's) — the
      #   shape a session's `payment_method_configuration` carries. Apply it over the
      #   payment method types catalogue for the offerable set. `null` means platform
      #   defaults; `payment_method_configuration` stays this configuration's own editable
      #   override.
      #
      #   @return [WhopSDK::Models::CheckoutConfiguration::EffectivePaymentMethodConfiguration, nil]
      required :effective_payment_method_configuration,
               -> { WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration },
               nil?: true

      # @!attribute metadata
      #   Custom key-value metadata copied to payments and memberships. `null` without the
      #   `checkout_configuration:basic:read` scope.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute mode
      #   Controls whether checkout charges the buyer immediately or saves payment details
      #   for later.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Mode]
      required :mode, enum: -> { WhopSDK::CheckoutConfiguration::Mode }

      # @!attribute payment_method_configuration
      #   Payment method overrides for this checkout. `null` when it uses the plan or
      #   platform defaults.
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan
      #   Plan used for payment checkout. `null` in setup mode.
      #
      #   @return [WhopSDK::Models::CheckoutConfiguration::Plan, nil]
      required :plan, -> { WhopSDK::CheckoutConfiguration::Plan }, nil?: true

      # @!attribute purchase_url
      #   Checkout URL you can send to customers.
      #
      #   @return [String, nil]
      required :purchase_url, String, nil?: true

      # @!attribute redirect_url
      #   URL customers are sent to after checkout, or `null` when no redirect is
      #   configured.
      #
      #   @return [String, nil]
      required :redirect_url, String, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this checkout, or `null` to use the account default.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::ThreeDSLevel, nil]
      required :three_ds_level, enum: -> { WhopSDK::CheckoutConfiguration::ThreeDSLevel }, nil?: true

      # @!attribute updated_at
      #   When the checkout configuration was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account_id:, affiliate_code:, created_at:, currency:, effective_payment_method_configuration:, metadata:, mode:, payment_method_configuration:, plan:, purchase_url:, redirect_url:, three_ds_level:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfiguration} for more details.
      #
      #   @param id [String]
      #
      #   @param account_id [String] Account ID, prefixed `biz_`.
      #
      #   @param affiliate_code [String, nil] Affiliate code applied at checkout, or `null` when none is set.
      #
      #   @param created_at [String] When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::CheckoutConfiguration::Currency, nil] Currency used for setup-mode payment method availability; defaults to `usd` when
      #
      #   @param effective_payment_method_configuration [WhopSDK::Models::CheckoutConfiguration::EffectivePaymentMethodConfiguration, nil] The configuration governing a checkout mounted from this configuration, resolved
      #
      #   @param metadata [Object, nil] Custom key-value metadata copied to payments and memberships. `null` without the
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutConfiguration::Mode] Controls whether checkout charges the buyer immediately or saves payment details
      #
      #   @param payment_method_configuration [Object, nil] Payment method overrides for this checkout. `null` when it uses the plan or plat
      #
      #   @param plan [WhopSDK::Models::CheckoutConfiguration::Plan, nil] Plan used for payment checkout. `null` in setup mode.
      #
      #   @param purchase_url [String, nil] Checkout URL you can send to customers.
      #
      #   @param redirect_url [String, nil] URL customers are sent to after checkout, or `null` when no redirect is configur
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfiguration::ThreeDSLevel, nil] 3D Secure behavior for this checkout, or `null` to use the account default.
      #
      #   @param updated_at [String] When the checkout configuration was last updated, as an ISO 8601 timestamp.

      # Currency used for setup-mode payment method availability; defaults to `usd` when
      # omitted.
      #
      # @see WhopSDK::Models::CheckoutConfiguration#currency
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

      # @see WhopSDK::Models::CheckoutConfiguration#effective_payment_method_configuration
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
        #   {WhopSDK::Models::CheckoutConfiguration::EffectivePaymentMethodConfiguration}
        #   for more details.
        #
        #   The configuration governing a checkout mounted from this configuration, resolved
        #   through every layer (its own overrides, the plan's, and the account's) — the
        #   shape a session's `payment_method_configuration` carries. Apply it over the
        #   payment method types catalogue for the offerable set. `null` means platform
        #   defaults; `payment_method_configuration` stays this configuration's own editable
        #   override.
        #
        #   @param disabled [Array<String>]
        #
        #   @param enabled [Array<String>]
        #
        #   @param include_platform_defaults [Boolean] Whether Whop's default set is the starting point. When `false`, only `enabled` i
      end

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      #
      # @see WhopSDK::Models::CheckoutConfiguration#mode
      module Mode
        extend WhopSDK::Internal::Type::Enum

        PAYMENT = :payment
        SETUP = :setup

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CheckoutConfiguration#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Plan ID, prefixed `plan_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute adaptive_pricing_enabled
        #   Whether this plan accepts local currency payments via adaptive pricing.
        #
        #   @return [Boolean]
        required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

        # @!attribute billing_period
        #   Recurring billing interval in days.
        #
        #   @return [Integer, nil]
        required :billing_period, Integer, nil?: true

        # @!attribute currency
        #   Three-letter ISO currency code for the plan's prices.
        #
        #   @return [String]
        required :currency, String

        # @!attribute expiration_days
        #   Access duration in days for expiration-based plans.
        #
        #   @return [Integer, nil]
        required :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #   Initial purchase price in the plan currency.
        #
        #   @return [Float]
        required :initial_price, Float

        # @!attribute plan_type
        #   Billing model for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::PlanType]
        required :plan_type, enum: -> { WhopSDK::CheckoutConfiguration::Plan::PlanType }

        # @!attribute release_method
        #   Sales method for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::ReleaseMethod]
        required :release_method, enum: -> { WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod }

        # @!attribute renewal_price
        #   Recurring price charged each billing period.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute three_ds_level
        #   3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::ThreeDSLevel, nil]
        required :three_ds_level, enum: -> { WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel }, nil?: true

        # @!attribute trial_period_days
        #   Free trial days before the first renewal charge.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Whether the plan is visible to customers or hidden from public view.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::Visibility]
        required :visibility, enum: -> { WhopSDK::CheckoutConfiguration::Plan::Visibility }

        # @!method initialize(id:, adaptive_pricing_enabled:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, three_ds_level:, trial_period_days:, visibility:)
        #   Plan used for payment checkout. `null` in setup mode.
        #
        #   @param id [String] Plan ID, prefixed `plan_`.
        #
        #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing.
        #
        #   @param billing_period [Integer, nil] Recurring billing interval in days.
        #
        #   @param currency [String] Three-letter ISO currency code for the plan's prices.
        #
        #   @param expiration_days [Integer, nil] Access duration in days for expiration-based plans.
        #
        #   @param initial_price [Float] Initial purchase price in the plan currency.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::PlanType] Billing model for the plan.
        #
        #   @param release_method [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::ReleaseMethod] Sales method for the plan.
        #
        #   @param renewal_price [Float] Recurring price charged each billing period.
        #
        #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::ThreeDSLevel, nil] 3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @param trial_period_days [Integer, nil] Free trial days before the first renewal charge.
        #
        #   @param visibility [Symbol, WhopSDK::Models::CheckoutConfiguration::Plan::Visibility] Whether the plan is visible to customers or hidden from public view.

        # Billing model for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfiguration::Plan#plan_type
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sales method for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfiguration::Plan#release_method
        module ReleaseMethod
          extend WhopSDK::Internal::Type::Enum

          BUY_NOW = :buy_now
          WAITLIST = :waitlist

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # 3D Secure behavior for this plan, or `null` to use the account default.
        #
        # @see WhopSDK::Models::CheckoutConfiguration::Plan#three_ds_level
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          MANDATE_CHALLENGE = :mandate_challenge
          FRICTIONLESS = :frictionless

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the plan is visible to customers or hidden from public view.
        #
        # @see WhopSDK::Models::CheckoutConfiguration::Plan#visibility
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

      # 3D Secure behavior for this checkout, or `null` to use the account default.
      #
      # @see WhopSDK::Models::CheckoutConfiguration#three_ds_level
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
