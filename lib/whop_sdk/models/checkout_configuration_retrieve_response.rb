# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#retrieve
    class CheckoutConfigurationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Checkout configuration ID, prefixed `ch_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute created_at
      #   When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute mode
      #   Controls whether checkout charges the buyer immediately or saves payment details
      #   for later.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Mode]
      required :mode, enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Mode }

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

      # @!attribute effective_payment_method_configuration
      #   The configuration governing a checkout mounted from this configuration, resolved
      #   through every layer (its own overrides, the plan's, and the account's) — the
      #   shape a session's `payment_method_configuration` carries. Apply it over the
      #   payment method types catalogue for the offerable set. `null` means platform
      #   defaults; `payment_method_configuration` stays this configuration's own editable
      #   override.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::EffectivePaymentMethodConfiguration, nil]
      optional :effective_payment_method_configuration,
               -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::EffectivePaymentMethodConfiguration },
               nil?: true

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
      #   @return [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::PaymentMethodConfiguration },
               nil?: true

      # @!attribute plan
      #   Plan used for payment checkout. `null` in setup mode.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan, nil]
      optional :plan, -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan }, nil?: true

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
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::ThreeDSLevel, nil]
      optional :three_ds_level,
               enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::ThreeDSLevel },
               nil?: true

      # @!method initialize(id:, account_id:, created_at:, mode:, updated_at:, affiliate_code: nil, currency: nil, effective_payment_method_configuration: nil, metadata: nil, payment_method_configuration: nil, plan: nil, purchase_url: nil, redirect_url: nil, three_ds_level: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfigurationRetrieveResponse} for more details.
      #
      #   @param id [String] Checkout configuration ID, prefixed `ch_`.
      #
      #   @param account_id [String] Account ID, prefixed `biz_`.
      #
      #   @param created_at [String] When the checkout configuration was created, as an ISO 8601 timestamp.
      #
      #   @param mode [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Mode] Controls whether checkout charges the buyer immediately or saves payment details
      #
      #   @param updated_at [String] When the checkout configuration was last updated, as an ISO 8601 timestamp.
      #
      #   @param affiliate_code [String, nil] Affiliate code applied at checkout, or `null` when none is set.
      #
      #   @param currency [String, nil] Currency used for setup-mode payment method availability; defaults to `usd` when
      #
      #   @param effective_payment_method_configuration [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::EffectivePaymentMethodConfiguration, nil] The configuration governing a checkout mounted from this configuration, resolved
      #
      #   @param metadata [Object, nil] Custom key-value metadata copied to payments and memberships. `null` without the
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::PaymentMethodConfiguration, nil] Payment method overrides for this checkout. `null` when it uses the plan or plat
      #
      #   @param plan [WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan, nil] Plan used for payment checkout. `null` in setup mode.
      #
      #   @param purchase_url [String, nil] Checkout URL you can send to customers.
      #
      #   @param redirect_url [String, nil] URL customers are sent to after checkout, or `null` when no redirect is configur
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::ThreeDSLevel, nil] 3D Secure behavior for this checkout, or `null` to use the account default.

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      #
      # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse#mode
      module Mode
        extend WhopSDK::Internal::Type::Enum

        PAYMENT = :payment
        SETUP = :setup

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse#effective_payment_method_configuration
      class EffectivePaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   Payment methods explicitly disabled.
        #
        #   @return [Array<String>, nil]
        optional :disabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute enabled
        #   Payment methods explicitly enabled.
        #
        #   @return [Array<String>, nil]
        optional :enabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_platform_defaults
        #   Whether platform default payment methods are included.
        #
        #   @return [Boolean, nil]
        optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
        #   The configuration governing a checkout mounted from this configuration, resolved
        #   through every layer (its own overrides, the plan's, and the account's) — the
        #   shape a session's `payment_method_configuration` carries. Apply it over the
        #   payment method types catalogue for the offerable set. `null` means platform
        #   defaults; `payment_method_configuration` stays this configuration's own editable
        #   override.
        #
        #   @param disabled [Array<String>] Payment methods explicitly disabled.
        #
        #   @param enabled [Array<String>] Payment methods explicitly enabled.
        #
        #   @param include_platform_defaults [Boolean] Whether platform default payment methods are included.
      end

      # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse#payment_method_configuration
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

      # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse#plan
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
        #   Billing model for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::PlanType]
        required :plan_type, enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::PlanType }

        # @!attribute release_method
        #   Sales method for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ReleaseMethod]
        required :release_method,
                 enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ReleaseMethod }

        # @!attribute renewal_price
        #   Recurring price charged each billing period.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute three_ds_level
        #   3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ThreeDSLevel, nil]
        required :three_ds_level,
                 enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ThreeDSLevel },
                 nil?: true

        # @!attribute trial_period_days
        #   Free trial days before the first renewal charge.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Whether the plan is visible to customers or hidden from public view.
        #
        #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::Visibility]
        required :visibility,
                 enum: -> { WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::Visibility }

        # @!method initialize(id:, adaptive_pricing_enabled:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, three_ds_level:, trial_period_days:, visibility:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan} for more details.
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
        #   @param plan_type [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::PlanType] Billing model for the plan.
        #
        #   @param release_method [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ReleaseMethod] Sales method for the plan.
        #
        #   @param renewal_price [Float] Recurring price charged each billing period.
        #
        #   @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::ThreeDSLevel, nil] 3D Secure behavior for this plan, or `null` to use the account default.
        #
        #   @param trial_period_days [Integer, nil] Free trial days before the first renewal charge.
        #
        #   @param visibility [Symbol, WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan::Visibility] Whether the plan is visible to customers or hidden from public view.

        # Billing model for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan#plan_type
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sales method for the plan.
        #
        # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan#release_method
        module ReleaseMethod
          extend WhopSDK::Internal::Type::Enum

          BUY_NOW = :buy_now
          WAITLIST = :waitlist

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # 3D Secure behavior for this plan, or `null` to use the account default.
        #
        # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan#three_ds_level
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          MANDATE_CHALLENGE = :mandate_challenge
          FRICTIONLESS = :frictionless

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the plan is visible to customers or hidden from public view.
        #
        # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan#visibility
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
      # @see WhopSDK::Models::CheckoutConfigurationRetrieveResponse#three_ds_level
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
