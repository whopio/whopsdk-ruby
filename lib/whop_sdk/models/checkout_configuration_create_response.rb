# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#create
    class CheckoutConfigurationCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Checkout configuration ID, prefixed `ch_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute company_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute created_at
      #   When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute mode
      #   Checkout mode: `payment` collects payment now; `setup` saves payment details for
      #   later.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode]
      required :mode, enum: -> { WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode }

      # @!attribute updated_at
      #   When the checkout configuration was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute affiliate_code
      #   Affiliate code applied at checkout, or `null` when none is set.
      #
      #   @return [String, nil]
      optional :affiliate_code, String, nil?: true

      # @!attribute currency
      #   Currency used for setup-mode payment method availability; defaults to `usd` when
      #   omitted.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute metadata
      #   Custom key-value metadata copied to payments and memberships. `null` without the
      #   `checkout_configuration:basic:read` scope.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_method_configuration
      #   Payment method overrides for this checkout. `null` when it uses the plan or
      #   platform defaults.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration },
               nil?: true

      # @!attribute plan
      #   Plan used for payment checkout. `null` in setup mode.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan, nil]
      optional :plan, -> { WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan }, nil?: true

      # @!attribute purchase_url
      #   Checkout URL you can send to customers.
      #
      #   @return [String, nil]
      optional :purchase_url, String, nil?: true

      # @!attribute redirect_url
      #   URL customers are sent to after checkout, or `null` when no redirect is
      #   configured.
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this checkout, or `null` to use the account default.
      #
      #   @return [String, nil]
      optional :three_ds_level, String, nil?: true

      # @!method initialize(id:, company_id:, created_at:, mode:, updated_at:, affiliate_code: nil, currency: nil, metadata: nil, payment_method_configuration: nil, plan: nil, purchase_url: nil, redirect_url: nil, three_ds_level: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfigurationCreateResponse} for more details.
      #
      #   @param id [String] Checkout configuration ID, prefixed `ch_`.
      #
      #   @param company_id [String] Account ID, prefixed `biz_`.
      #
      #   @param created_at [String] When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode] Checkout mode: `payment` collects payment now; `setup` saves payment details for
      #
      #   @param updated_at [String] When the checkout configuration was last updated, as an ISO 8601 timestamp.
      #
      #   @param affiliate_code [String, nil] Affiliate code applied at checkout, or `null` when none is set.
      #
      #   @param currency [String, nil] Currency used for setup-mode payment method availability; defaults to `usd` when
      #
      #   @param metadata [Object, nil] Custom key-value metadata copied to payments and memberships. `null` without the
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration, nil] Payment method overrides for this checkout. `null` when it uses the plan or plat
      #
      #   @param plan [WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan, nil] Plan used for payment checkout. `null` in setup mode.
      #
      #   @param purchase_url [String, nil] Checkout URL you can send to customers.
      #
      #   @param redirect_url [String, nil] URL customers are sent to after checkout, or `null` when no redirect is configur
      #
      #   @param three_ds_level [String, nil] 3D Secure behavior for this checkout, or `null` to use the account default.

      # Checkout mode: `payment` collects payment now; `setup` saves payment details for
      # later.
      #
      # @see WhopSDK::Models::CheckoutConfigurationCreateResponse#mode
      module Mode
        extend WhopSDK::Internal::Type::Enum

        PAYMENT = :payment
        SETUP = :setup

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CheckoutConfigurationCreateResponse#payment_method_configuration
      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   Payment methods explicitly disabled for checkout.
        #
        #   @return [Array<String>, nil]
        optional :disabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute enabled
        #   Payment methods explicitly enabled for checkout.
        #
        #   @return [Array<String>, nil]
        optional :enabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_platform_defaults
        #   Whether platform default payment methods are included.
        #
        #   @return [Boolean, nil]
        optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
        #   Payment method overrides for this checkout. `null` when it uses the plan or
        #   platform defaults.
        #
        #   @param disabled [Array<String>] Payment methods explicitly disabled for checkout.
        #
        #   @param enabled [Array<String>] Payment methods explicitly enabled for checkout.
        #
        #   @param include_platform_defaults [Boolean] Whether platform default payment methods are included.
      end

      # @see WhopSDK::Models::CheckoutConfigurationCreateResponse#plan
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
        #   Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        #   `null` for one-time plans.
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
        #   Billing model for the plan: `renewal` (recurring) or `one_time` (single
        #   payment).
        #
        #   @return [String]
        required :plan_type, String

        # @!attribute release_method
        #   Sales method for the plan, such as `buy_now` or `waitlist`.
        #
        #   @return [String]
        required :release_method, String

        # @!attribute renewal_price
        #   Recurring price charged each billing period.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute three_ds_level
        #   3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @return [String, nil]
        required :three_ds_level, String, nil?: true

        # @!attribute trial_period_days
        #   Free trial days before the first renewal charge.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Whether the plan is visible to customers or hidden from public view.
        #
        #   @return [String]
        required :visibility, String

        # @!method initialize(id:, adaptive_pricing_enabled:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, three_ds_level:, trial_period_days:, visibility:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan} for more details.
        #
        #   Plan used for payment checkout. `null` in setup mode.
        #
        #   @param id [String] Plan ID, prefixed `plan_`.
        #
        #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing.
        #
        #   @param billing_period [Integer, nil] Recurring billing interval in days, such as 30 for monthly or 365 for annual. `n
        #
        #   @param currency [String] Three-letter ISO currency code for the plan's prices.
        #
        #   @param expiration_days [Integer, nil] Access duration in days for expiration-based plans.
        #
        #   @param initial_price [Float] Initial purchase price in the plan currency.
        #
        #   @param plan_type [String] Billing model for the plan: `renewal` (recurring) or `one_time` (single payment)
        #
        #   @param release_method [String] Sales method for the plan, such as `buy_now` or `waitlist`.
        #
        #   @param renewal_price [Float] Recurring price charged each billing period.
        #
        #   @param three_ds_level [String, nil] 3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @param trial_period_days [Integer, nil] Free trial days before the first renewal charge.
        #
        #   @param visibility [String] Whether the plan is visible to customers or hidden from public view.
      end
    end
  end
end
