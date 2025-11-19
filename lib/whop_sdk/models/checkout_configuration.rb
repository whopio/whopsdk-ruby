# frozen_string_literal: true

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the checkout configuration
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

      # @!attribute metadata
      #   The metadata to use for the checkout configuration
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute mode
      #   The mode of the checkout session.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfiguration::Mode]
      required :mode, enum: -> { WhopSDK::CheckoutConfiguration::Mode }

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

      # @!method initialize(id:, affiliate_code:, company_id:, metadata:, mode:, payment_method_configuration:, plan:, purchase_url:, redirect_url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfiguration} for more details.
      #
      #           A checkout configuration object.
      #           Can be used to create a reusable custom configuration for a checkout, including attaching plans, affiliates and custom metadata to the checkout.
      #           This configuration can be re-used by multiple users.
      #           All successful payments and memberships resulting from a checkout will contain the passed metadata.
      #
      #   @param id [String] The ID of the checkout configuration
      #
      #   @param affiliate_code [String, nil] The affiliate code to use for the checkout configuration
      #
      #   @param company_id [String] The ID of the company to use for the checkout configuration
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to use for the checkout configuration
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutConfiguration::Mode] The mode of the checkout session.
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfiguration::PaymentMethodConfiguration, nil] The explicit payment method configuration for the session, if any. This currentl
      #
      #   @param plan [WhopSDK::Models::CheckoutConfiguration::Plan, nil] The plan to use for the checkout configuration
      #
      #   @param purchase_url [String] A URL you can send to customers to complete a checkout. It looks like `/checkout
      #
      #   @param redirect_url [String, nil] The URL to redirect the user to after the checkout configuration is created

      # The mode of the checkout session.
      #
      # @see WhopSDK::Models::CheckoutConfiguration#mode
      module Mode
        extend WhopSDK::Internal::Type::Enum

        PAYMENT = :payment
        SETUP = :setup

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        required :billing_period, Integer, nil?: true

        # @!attribute currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute expiration_days
        #   The interval at which the plan charges (expiration plans).
        #
        #   @return [Integer, nil]
        required :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #   The price a person has to pay for a plan on the initial purchase.
        #
        #   @return [Float]
        required :initial_price, Float

        # @!attribute plan_type
        #   Indicates if the plan is a one time payment or recurring.
        #
        #   @return [Symbol, WhopSDK::Models::PlanType]
        required :plan_type, enum: -> { WhopSDK::PlanType }

        # @!attribute release_method
        #   This is the release method the business uses to sell this plan.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod]
        required :release_method, enum: -> { WhopSDK::ReleaseMethod }

        # @!attribute renewal_price
        #   The price a person has to pay for a plan on the renewal purchase.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute trial_period_days
        #   The number of free trial days added before a renewal plan.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Shows or hides the plan from public/business view.
        #
        #   @return [Symbol, WhopSDK::Models::Visibility]
        required :visibility, enum: -> { WhopSDK::Visibility }

        # @!method initialize(id:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, trial_period_days:, visibility:)
        #   The plan to use for the checkout configuration
        #
        #   @param id [String] The internal ID of the plan.
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param initial_price [Float] The price a person has to pay for a plan on the initial purchase.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType] Indicates if the plan is a one time payment or recurring.
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod] This is the release method the business uses to sell this plan.
        #
        #   @param renewal_price [Float] The price a person has to pay for a plan on the renewal purchase.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility] Shows or hides the plan from public/business view.
      end
    end
  end
end
