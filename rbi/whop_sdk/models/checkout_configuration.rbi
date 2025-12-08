# typed: strong

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CheckoutConfiguration, WhopSDK::Internal::AnyHash)
        end

      # The ID of the checkout configuration
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

      # A checkout configuration object. Can be used to create a reusable custom
      # configuration for a checkout, including attaching plans, affiliates and custom
      # metadata to the checkout. This configuration can be re-used by multiple users.
      # All successful payments and memberships resulting from a checkout will contain
      # the passed metadata.
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
        # The ID of the checkout configuration
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

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The respective currency identifier for the plan.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # The price a person has to pay for a plan on the initial purchase.
        sig { returns(Float) }
        attr_accessor :initial_price

        # Indicates if the plan is a one time payment or recurring.
        sig { returns(WhopSDK::PlanType::TaggedSymbol) }
        attr_accessor :plan_type

        # This is the release method the business uses to sell this plan.
        sig { returns(WhopSDK::ReleaseMethod::TaggedSymbol) }
        attr_accessor :release_method

        # The price a person has to pay for a plan on the renewal purchase.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Shows or hides the plan from public/business view.
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
          # The internal ID of the plan.
          id:,
          # The interval at which the plan charges (renewal plans).
          billing_period:,
          # The respective currency identifier for the plan.
          currency:,
          # The interval at which the plan charges (expiration plans).
          expiration_days:,
          # The price a person has to pay for a plan on the initial purchase.
          initial_price:,
          # Indicates if the plan is a one time payment or recurring.
          plan_type:,
          # This is the release method the business uses to sell this plan.
          release_method:,
          # The price a person has to pay for a plan on the renewal purchase.
          renewal_price:,
          # The number of free trial days added before a renewal plan.
          trial_period_days:,
          # Shows or hides the plan from public/business view.
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
