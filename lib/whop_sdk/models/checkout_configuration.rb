# frozen_string_literal: true

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the checkout session.
      #
      #   @return [String]
      required :id, String

      # @!attribute affiliate_code
      #   The affiliate code to use for the checkout configuration
      #
      #   @return [String, nil]
      required :affiliate_code, String, nil?: true

      # @!attribute company_id
      #   The ID of the company to use for the checkout configuration
      #
      #   @return [String]
      required :company_id, String

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute metadata
      #   The metadata to use for the checkout configuration
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute mode
      #   The mode of the checkout session.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutModes]
      required :mode, enum: -> { WhopSDK::CheckoutModes }

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the session, if any. This
      #   currently only works in 'setup' mode. Use the plan's
      #   payment_method_configuration for payment method.
      #
      #   @return [WhopSDK::Models::CheckoutConfiguration::PaymentMethodConfiguration, nil]
      required :payment_method_configuration,
               -> { WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration },
               nil?: true

      # @!attribute plan
      #   The plan to use for the checkout configuration
      #
      #   @return [WhopSDK::Models::CheckoutConfiguration::Plan, nil]
      required :plan, -> { WhopSDK::CheckoutConfiguration::Plan }, nil?: true

      # @!attribute purchase_url
      #   A URL you can send to customers to complete a checkout. It looks like
      #   `/checkout/plan_xxxx?session={id}`
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute redirect_url
      #   The URL to redirect the user to after the checkout configuration is created
      #
      #   @return [String, nil]
      required :redirect_url, String, nil?: true

      # @!method initialize(id:, affiliate_code:, company_id:, currency:, metadata:, mode:, payment_method_configuration:, plan:, purchase_url:, redirect_url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfiguration} for more details.
      #
      #   A checkout configuration is a reusable configuration for a checkout, including
      #   the plan, affiliate, and custom metadata. Payments and memberships created from
      #   a checkout session inherit its metadata.
      #
      #   @param id [String] The unique identifier for the checkout session.
      #
      #   @param affiliate_code [String, nil] The affiliate code to use for the checkout configuration
      #
      #   @param company_id [String] The ID of the company to use for the checkout configuration
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to use for the checkout configuration
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutModes] The mode of the checkout session.
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfiguration::PaymentMethodConfiguration, nil] The explicit payment method configuration for the session, if any. This currentl
      #
      #   @param plan [WhopSDK::Models::CheckoutConfiguration::Plan, nil] The plan to use for the checkout configuration
      #
      #   @param purchase_url [String] A URL you can send to customers to complete a checkout. It looks like `/checkout
      #
      #   @param redirect_url [String, nil] The URL to redirect the user to after the checkout configuration is created

      # @see WhopSDK::Models::CheckoutConfiguration#payment_method_configuration
      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   An array of payment method identifiers that are explicitly disabled. Only
        #   applies if the include_platform_defaults is true.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
        required :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute enabled
        #   An array of payment method identifiers that are explicitly enabled. This means
        #   these payment methods will be shown on checkout. Example use case is to only
        #   enable a specific payment method like cashapp, or extending the platform
        #   defaults with additional methods.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
        required :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute include_platform_defaults
        #   Whether Whop's platform default payment method enablement settings are included
        #   in this configuration. The full list of default payment methods can be found in
        #   the documentation at docs.whop.com/payments.
        #
        #   @return [Boolean]
        required :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled:, enabled:, include_platform_defaults:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfiguration::PaymentMethodConfiguration} for more
        #   details.
        #
        #   The explicit payment method configuration for the session, if any. This
        #   currently only works in 'setup' mode. Use the plan's
        #   payment_method_configuration for payment method.
        #
        #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly disabled. Only applie
        #
        #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly enabled. This means t
        #
        #   @param include_platform_defaults [Boolean] Whether Whop's platform default payment method enablement settings are included
      end

      # @see WhopSDK::Models::CheckoutConfiguration#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_period
        #   The number of days between each recurring charge. Null for one-time plans. For
        #   example, 30 for monthly or 365 for annual billing.
        #
        #   @return [Integer, nil]
        required :billing_period, Integer, nil?: true

        # @!attribute currency
        #   The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        #   amounts on the plan are denominated in this currency.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute expiration_days
        #   The number of days until the membership expires (for expiration-based plans).
        #   For example, 365 for a one-year access pass.
        #
        #   @return [Integer, nil]
        required :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #   The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
        #   For one-time plans, this is the full price. For renewal plans, this is charged
        #   on top of the first renewal_price.
        #
        #   @return [Float]
        required :initial_price, Float

        # @!attribute plan_type
        #   The billing model for this plan: 'renewal' for recurring subscriptions or
        #   'one_time' for single payments.
        #
        #   @return [Symbol, WhopSDK::Models::PlanType]
        required :plan_type, enum: -> { WhopSDK::PlanType }

        # @!attribute release_method
        #   The method used to sell this plan: 'buy_now' for immediate purchase or
        #   'waitlist' for waitlist-based access.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod]
        required :release_method, enum: -> { WhopSDK::ReleaseMethod }

        # @!attribute renewal_price
        #   The recurring price charged every billing_period in the plan's base_currency
        #   (e.g., 9.99 for $9.99/period). Zero for one-time plans.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute trial_period_days
        #   The number of free trial days before the first charge on a renewal plan. Null if
        #   no trial is configured or the current user has already used a trial for this
        #   plan.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Controls whether the plan is visible to customers. When set to 'hidden', the
        #   plan is only accessible via direct link.
        #
        #   @return [Symbol, WhopSDK::Models::Visibility]
        required :visibility, enum: -> { WhopSDK::Visibility }

        # @!method initialize(id:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, trial_period_days:, visibility:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfiguration::Plan} for more details.
        #
        #   The plan to use for the checkout configuration
        #
        #   @param id [String] The unique identifier for the plan.
        #
        #   @param billing_period [Integer, nil] The number of days between each recurring charge. Null for one-time plans. For e
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        #
        #   @param expiration_days [Integer, nil] The number of days until the membership expires (for expiration-based plans). Fo
        #
        #   @param initial_price [Float] The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType] The billing model for this plan: 'renewal' for recurring subscriptions or 'one_t
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod] The method used to sell this plan: 'buy_now' for immediate purchase or 'waitlist
        #
        #   @param renewal_price [Float] The recurring price charged every billing_period in the plan's base_currency (e.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a renewal plan. Null if
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility] Controls whether the plan is visible to customers. When set to 'hidden', the pla
      end
    end
  end
end
