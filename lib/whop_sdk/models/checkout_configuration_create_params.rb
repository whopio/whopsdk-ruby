# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#create
    class CheckoutConfigurationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute affiliate_code
      #   Affiliate code to apply to the checkout.
      #
      #   @return [String, nil]
      optional :affiliate_code, String, nil?: true

      # @!attribute currency
      #   Currency used for setup-mode payment method availability.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute metadata
      #   Custom key-value metadata copied to payments and memberships.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute mode
      #   Controls whether checkout charges the buyer immediately or saves payment details
      #   for later. Defaults to `payment`.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Mode, nil]
      optional :mode, enum: -> { WhopSDK::CheckoutConfigurationCreateParams::Mode }

      # @!attribute payment_method_configuration
      #   Payment method overrides for this checkout. `null` uses the plan or platform
      #   defaults.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration },
               nil?: true

      # @!attribute plan
      #   Plan attributes used to create or find a plan for this checkout configuration.
      #   Mutually exclusive with `plan_id`.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil]
      optional :plan, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan }, nil?: true

      # @!attribute plan_id
      #   Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute redirect_url
      #   URL customers are sent to after checkout.
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this checkout.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::ThreeDSLevel, nil]
      optional :three_ds_level,
               enum: -> { WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel },
               nil?: true

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id: nil, affiliate_code: nil, currency: nil, metadata: nil, mode: nil, payment_method_configuration: nil, plan: nil, plan_id: nil, redirect_url: nil, three_ds_level: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfigurationCreateParams} for more details.
      #
      #   @param account_id [String] Account ID, prefixed `biz_`.
      #
      #   @param affiliate_code [String, nil] Affiliate code to apply to the checkout.
      #
      #   @param currency [String, nil] Currency used for setup-mode payment method availability.
      #
      #   @param metadata [Object, nil] Custom key-value metadata copied to payments and memberships.
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Mode] Controls whether checkout charges the buyer immediately or saves payment details
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] Payment method overrides for this checkout. `null` uses the plan or platform def
      #
      #   @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil] Plan attributes used to create or find a plan for this checkout configuration. M
      #
      #   @param plan_id [String, nil] Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
      #
      #   @param redirect_url [String, nil] URL customers are sent to after checkout.
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::ThreeDSLevel, nil] 3D Secure behavior for this checkout.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later. Defaults to `payment`.
      module Mode
        extend WhopSDK::Internal::Type::Enum

        PAYMENT = :payment
        SETUP = :setup

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   Payment method types explicitly disabled for checkout — the `type` values from
        #   the payment method types catalogue.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
        optional :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute enabled
        #   Payment method types explicitly enabled for checkout — the `type` values from
        #   the payment method types catalogue.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
        optional :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute include_platform_defaults
        #   Whether platform default payment methods are included.
        #
        #   @return [Boolean, nil]
        optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration}
        #   for more details.
        #
        #   Payment method overrides for this checkout. `null` uses the plan or platform
        #   defaults.
        #
        #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly disabled for checkout — the `type` values from t
        #
        #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly enabled for checkout — the `type` values from th
        #
        #   @param include_platform_defaults [Boolean] Whether platform default payment methods are included.
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute account_id
        #   Account ID for the inline plan, prefixed `biz_`. Defaults to the account
        #   resolved from the request.
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!attribute billing_period
        #   Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute currency
        #   Three-letter ISO currency code for the plan's prices.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Customer-visible plan description.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   Access duration in days for expiration-based plans.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute force_create_new_plan
        #   Whether to create a new plan instead of reusing a matching one.
        #
        #   @return [Boolean, nil]
        optional :force_create_new_plan, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute initial_price
        #   Initial purchase price in the plan currency.
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute metadata
        #   Custom key-value metadata stored on the plan.
        #
        #   @return [Object, nil]
        optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

        # @!attribute override_tax_type
        #   Tax classification override for this plan.
        #
        #   @return [String, nil]
        optional :override_tax_type, String, nil?: true

        # @!attribute payment_method_configuration
        #   Payment method overrides for the inline plan. `null` uses platform defaults.
        #
        #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration, nil]
        optional :payment_method_configuration,
                 -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration },
                 nil?: true

        # @!attribute plan_type
        #   Billing model for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PlanType, nil]
        optional :plan_type,
                 enum: -> {
                   WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType
                 },
                 nil?: true

        # @!attribute product_id
        #   Product ID the inline plan should belong to, prefixed `prod_`.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute release_method
        #   Sales method for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::ReleaseMethod, nil]
        optional :release_method,
                 enum: -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod },
                 nil?: true

        # @!attribute renewal_price
        #   Recurring price charged each billing period.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute stock
        #   Units available for purchase.
        #
        #   @return [Integer, nil]
        optional :stock, Integer, nil?: true

        # @!attribute three_ds_level
        #   3D Secure behavior for the inline plan, or `null` to use the account default.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel, nil]
        optional :three_ds_level,
                 enum: -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel },
                 nil?: true

        # @!attribute title
        #   Plan display name shown to customers.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute trial_period_days
        #   Free trial days before the first renewal charge.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute unlimited_stock
        #   Whether the plan has unlimited stock.
        #
        #   @return [Boolean, nil]
        optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute visibility
        #   Whether the plan is visible to customers or hidden from public view.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Visibility, nil]
        optional :visibility,
                 enum: -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility },
                 nil?: true

        # @!method initialize(account_id: nil, billing_period: nil, currency: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, initial_price: nil, metadata: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, product_id: nil, release_method: nil, renewal_price: nil, stock: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan} for more details.
        #
        #   Plan attributes used to create or find a plan for this checkout configuration.
        #   Mutually exclusive with `plan_id`.
        #
        #   @param account_id [String, nil] Account ID for the inline plan, prefixed `biz_`. Defaults to the account resolve
        #
        #   @param billing_period [Integer, nil] Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        #
        #   @param currency [String, nil] Three-letter ISO currency code for the plan's prices.
        #
        #   @param description [String, nil] Customer-visible plan description.
        #
        #   @param expiration_days [Integer, nil] Access duration in days for expiration-based plans.
        #
        #   @param force_create_new_plan [Boolean, nil] Whether to create a new plan instead of reusing a matching one.
        #
        #   @param initial_price [Float, nil] Initial purchase price in the plan currency.
        #
        #   @param metadata [Object, nil] Custom key-value metadata stored on the plan.
        #
        #   @param override_tax_type [String, nil] Tax classification override for this plan.
        #
        #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration, nil] Payment method overrides for the inline plan. `null` uses platform defaults.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PlanType, nil] Billing model for the plan.
        #
        #   @param product_id [String, nil] Product ID the inline plan should belong to, prefixed `prod_`.
        #
        #   @param release_method [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::ReleaseMethod, nil] Sales method for the plan.
        #
        #   @param renewal_price [Float, nil] Recurring price charged each billing period.
        #
        #   @param stock [Integer, nil] Units available for purchase.
        #
        #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel, nil] 3D Secure behavior for the inline plan, or `null` to use the account default.
        #
        #   @param title [String, nil] Plan display name shown to customers.
        #
        #   @param trial_period_days [Integer, nil] Free trial days before the first renewal charge.
        #
        #   @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock.
        #
        #   @param visibility [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Visibility, nil] Whether the plan is visible to customers or hidden from public view.

        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#payment_method_configuration
        class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
          # @!attribute disabled
          #   Payment method types explicitly disabled for this plan — the `type` values from
          #   the payment method types catalogue.
          #
          #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
          optional :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

          # @!attribute enabled
          #   Payment method types explicitly enabled for this plan — the `type` values from
          #   the payment method types catalogue.
          #
          #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
          optional :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

          # @!attribute include_platform_defaults
          #   Whether platform default payment methods are included.
          #
          #   @return [Boolean, nil]
          optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

          # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration}
          #   for more details.
          #
          #   Payment method overrides for the inline plan. `null` uses platform defaults.
          #
          #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly disabled for this plan — the `type` values from
          #
          #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly enabled for this plan — the `type` values from t
          #
          #   @param include_platform_defaults [Boolean] Whether platform default payment methods are included.
        end

        # Billing model for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#plan_type
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sales method for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#release_method
        module ReleaseMethod
          extend WhopSDK::Internal::Type::Enum

          BUY_NOW = :buy_now
          WAITLIST = :waitlist

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # 3D Secure behavior for the inline plan, or `null` to use the account default.
        #
        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#three_ds_level
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          MANDATE_CHALLENGE = :mandate_challenge
          FRICTIONLESS = :frictionless

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the plan is visible to customers or hidden from public view.
        #
        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#visibility
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

      # 3D Secure behavior for this checkout.
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
