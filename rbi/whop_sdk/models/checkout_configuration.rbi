# typed: strong

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CheckoutConfiguration, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the checkout session.
      sig { returns(String) }
      attr_accessor :id

      # The affiliate code to use for the checkout configuration
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # The ID of the company to use for the checkout configuration
      sig { returns(String) }
      attr_accessor :company_id

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The metadata to use for the checkout configuration
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The mode of the checkout session.
      sig { returns(WhopSDK::CheckoutModes::TaggedSymbol) }
      attr_accessor :mode

      # The explicit payment method configuration for the session, if any. This
      # currently only works in 'setup' mode. Use the plan's
      # payment_method_configuration for payment method.
      sig do
        returns(
          T.nilable(WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration)
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # The plan to use for the checkout configuration
      sig { returns(T.nilable(WhopSDK::CheckoutConfiguration::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # A URL you can send to customers to complete a checkout. It looks like
      # `/checkout/plan_xxxx?session={id}`
      sig { returns(String) }
      attr_accessor :purchase_url

      # The URL to redirect the user to after the checkout configuration is created
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # A checkout configuration is a reusable configuration for a checkout, including
      # the plan, affiliate, and custom metadata. Payments and memberships created from
      # a checkout session inherit its metadata.
      sig do
        params(
          id: String,
          affiliate_code: T.nilable(String),
          company_id: String,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          mode: WhopSDK::CheckoutModes::OrSymbol,
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration::OrHash
            ),
          plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan::OrHash),
          purchase_url: String,
          redirect_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the checkout session.
        id:,
        # The affiliate code to use for the checkout configuration
        affiliate_code:,
        # The ID of the company to use for the checkout configuration
        company_id:,
        # The available currencies on the platform
        currency:,
        # The metadata to use for the checkout configuration
        metadata:,
        # The mode of the checkout session.
        mode:,
        # The explicit payment method configuration for the session, if any. This
        # currently only works in 'setup' mode. Use the plan's
        # payment_method_configuration for payment method.
        payment_method_configuration:,
        # The plan to use for the checkout configuration
        plan:,
        # A URL you can send to customers to complete a checkout. It looks like
        # `/checkout/plan_xxxx?session={id}`
        purchase_url:,
        # The URL to redirect the user to after the checkout configuration is created
        redirect_url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            affiliate_code: T.nilable(String),
            company_id: String,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            mode: WhopSDK::CheckoutModes::TaggedSymbol,
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration
              ),
            plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan),
            purchase_url: String,
            redirect_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # An array of payment method identifiers that are explicitly disabled. Only
        # applies if the include_platform_defaults is true.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol]) }
        attr_accessor :disabled

        # An array of payment method identifiers that are explicitly enabled. This means
        # these payment methods will be shown on checkout. Example use case is to only
        # enable a specific payment method like cashapp, or extending the platform
        # defaults with additional methods.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol]) }
        attr_accessor :enabled

        # Whether Whop's platform default payment method enablement settings are included
        # in this configuration. The full list of default payment methods can be found in
        # the documentation at docs.whop.com/payments.
        sig { returns(T::Boolean) }
        attr_accessor :include_platform_defaults

        # The explicit payment method configuration for the session, if any. This
        # currently only works in 'setup' mode. Use the plan's
        # payment_method_configuration for payment method.
        sig do
          params(
            disabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
            enabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of payment method identifiers that are explicitly disabled. Only
          # applies if the include_platform_defaults is true.
          disabled:,
          # An array of payment method identifiers that are explicitly enabled. This means
          # these payment methods will be shown on checkout. Example use case is to only
          # enable a specific payment method like cashapp, or extending the platform
          # defaults with additional methods.
          enabled:,
          # Whether Whop's platform default payment method enablement settings are included
          # in this configuration. The full list of default payment methods can be found in
          # the documentation at docs.whop.com/payments.
          include_platform_defaults:
        )
        end

        sig do
          override.returns(
            {
              disabled: T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol],
              enabled: T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfiguration::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The number of days between each recurring charge. Null for one-time plans. For
        # example, 30 for monthly or 365 for annual billing.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        # amounts on the plan are denominated in this currency.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The number of days until the membership expires (for expiration-based plans).
        # For example, 365 for a one-year access pass.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
        # For one-time plans, this is the full price. For renewal plans, this is charged
        # on top of the first renewal_price.
        sig { returns(Float) }
        attr_accessor :initial_price

        # The billing model for this plan: 'renewal' for recurring subscriptions or
        # 'one_time' for single payments.
        sig { returns(WhopSDK::PlanType::TaggedSymbol) }
        attr_accessor :plan_type

        # The method used to sell this plan: 'buy_now' for immediate purchase or
        # 'waitlist' for waitlist-based access.
        sig { returns(WhopSDK::ReleaseMethod::TaggedSymbol) }
        attr_accessor :release_method

        # The recurring price charged every billing_period in the plan's base_currency
        # (e.g., 9.99 for $9.99/period). Zero for one-time plans.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # The number of free trial days before the first charge on a renewal plan. Null if
        # no trial is configured or the current user has already used a trial for this
        # plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Controls whether the plan is visible to customers. When set to 'hidden', the
        # plan is only accessible via direct link.
        sig { returns(WhopSDK::Visibility::TaggedSymbol) }
        attr_accessor :visibility

        # The plan to use for the checkout configuration
        sig do
          params(
            id: String,
            billing_period: T.nilable(Integer),
            currency: WhopSDK::Currency::OrSymbol,
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            plan_type: WhopSDK::PlanType::OrSymbol,
            release_method: WhopSDK::ReleaseMethod::OrSymbol,
            renewal_price: Float,
            trial_period_days: T.nilable(Integer),
            visibility: WhopSDK::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the plan.
          id:,
          # The number of days between each recurring charge. Null for one-time plans. For
          # example, 30 for monthly or 365 for annual billing.
          billing_period:,
          # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
          # amounts on the plan are denominated in this currency.
          currency:,
          # The number of days until the membership expires (for expiration-based plans).
          # For example, 365 for a one-year access pass.
          expiration_days:,
          # The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
          # For one-time plans, this is the full price. For renewal plans, this is charged
          # on top of the first renewal_price.
          initial_price:,
          # The billing model for this plan: 'renewal' for recurring subscriptions or
          # 'one_time' for single payments.
          plan_type:,
          # The method used to sell this plan: 'buy_now' for immediate purchase or
          # 'waitlist' for waitlist-based access.
          release_method:,
          # The recurring price charged every billing_period in the plan's base_currency
          # (e.g., 9.99 for $9.99/period). Zero for one-time plans.
          renewal_price:,
          # The number of free trial days before the first charge on a renewal plan. Null if
          # no trial is configured or the current user has already used a trial for this
          # plan.
          trial_period_days:,
          # Controls whether the plan is visible to customers. When set to 'hidden', the
          # plan is only accessible via direct link.
          visibility:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_period: T.nilable(Integer),
              currency: WhopSDK::Currency::TaggedSymbol,
              expiration_days: T.nilable(Integer),
              initial_price: Float,
              plan_type: WhopSDK::PlanType::TaggedSymbol,
              release_method: WhopSDK::ReleaseMethod::TaggedSymbol,
              renewal_price: Float,
              trial_period_days: T.nilable(Integer),
              visibility: WhopSDK::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
