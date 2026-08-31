# typed: strong

module WhopSDK
  module Models
    class CheckoutConfigurationCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CheckoutConfigurationCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Checkout configuration ID, prefixed `ch_`.
      sig { returns(String) }
      attr_accessor :id

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # When the checkout configuration was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      sig do
        returns(
          WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::TaggedSymbol
        )
      end
      attr_accessor :mode

      # When the checkout configuration was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Affiliate code applied at checkout, or `null` when none is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # Currency used for setup-mode payment method availability; defaults to `usd` when
      # omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The configuration governing a checkout mounted from this configuration, resolved
      # through every layer (its own overrides, the plan's, and the account's) — the
      # shape a session's `payment_method_configuration` carries. Apply it over the
      # payment method types catalogue for the offerable set. `null` means platform
      # defaults; `payment_method_configuration` stays this configuration's own editable
      # override.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration
          )
        )
      end
      attr_reader :effective_payment_method_configuration

      sig do
        params(
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :effective_payment_method_configuration

      # Custom key-value metadata copied to payments and memberships. `null` without the
      # `checkout_configuration:basic:read` scope.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Payment method overrides for this checkout. `null` when it uses the plan or
      # platform defaults.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration
          )
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # Plan used for payment checkout. `null` in setup mode.
      sig do
        returns(
          T.nilable(WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan)
        )
      end
      attr_reader :plan

      sig do
        params(
          plan:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::OrHash
            )
        ).void
      end
      attr_writer :plan

      # Checkout URL you can send to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :purchase_url

      # URL customers are sent to after checkout, or `null` when no redirect is
      # configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # 3D Secure behavior for this checkout, or `null` to use the account default.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::TaggedSymbol
          )
        )
      end
      attr_accessor :three_ds_level

      sig do
        params(
          id: String,
          account_id: String,
          created_at: String,
          mode:
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::OrSymbol,
          updated_at: String,
          affiliate_code: T.nilable(String),
          currency: T.nilable(String),
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration::OrHash
            ),
          metadata: T.nilable(T.anything),
          payment_method_configuration:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration::OrHash
            ),
          plan:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::OrHash
            ),
          purchase_url: T.nilable(String),
          redirect_url: T.nilable(String),
          three_ds_level:
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Checkout configuration ID, prefixed `ch_`.
        id:,
        # Account ID, prefixed `biz_`.
        account_id:,
        # When the checkout configuration was created, as an ISO 8601 timestamp.
        created_at:,
        # Controls whether checkout charges the buyer immediately or saves payment details
        # for later.
        mode:,
        # When the checkout configuration was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # Affiliate code applied at checkout, or `null` when none is set.
        affiliate_code: nil,
        # Currency used for setup-mode payment method availability; defaults to `usd` when
        # omitted.
        currency: nil,
        # The configuration governing a checkout mounted from this configuration, resolved
        # through every layer (its own overrides, the plan's, and the account's) — the
        # shape a session's `payment_method_configuration` carries. Apply it over the
        # payment method types catalogue for the offerable set. `null` means platform
        # defaults; `payment_method_configuration` stays this configuration's own editable
        # override.
        effective_payment_method_configuration: nil,
        # Custom key-value metadata copied to payments and memberships. `null` without the
        # `checkout_configuration:basic:read` scope.
        metadata: nil,
        # Payment method overrides for this checkout. `null` when it uses the plan or
        # platform defaults.
        payment_method_configuration: nil,
        # Plan used for payment checkout. `null` in setup mode.
        plan: nil,
        # Checkout URL you can send to customers.
        purchase_url: nil,
        # URL customers are sent to after checkout, or `null` when no redirect is
        # configured.
        redirect_url: nil,
        # 3D Secure behavior for this checkout, or `null` to use the account default.
        three_ds_level: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            created_at: String,
            mode:
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::TaggedSymbol,
            updated_at: String,
            affiliate_code: T.nilable(String),
            currency: T.nilable(String),
            effective_payment_method_configuration:
              T.nilable(
                WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration
              ),
            metadata: T.nilable(T.anything),
            payment_method_configuration:
              T.nilable(
                WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration
              ),
            plan:
              T.nilable(
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan
              ),
            purchase_url: T.nilable(String),
            redirect_url: T.nilable(String),
            three_ds_level:
              T.nilable(
                WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::TaggedSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      module Mode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(
            :payment,
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::TaggedSymbol
          )
        SETUP =
          T.let(
            :setup,
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class EffectivePaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # Payment methods explicitly disabled.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :disabled

        sig { params(disabled: T::Array[String]).void }
        attr_writer :disabled

        # Payment methods explicitly enabled.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :enabled

        sig { params(enabled: T::Array[String]).void }
        attr_writer :enabled

        # Whether platform default payment methods are included.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_platform_defaults

        sig { params(include_platform_defaults: T::Boolean).void }
        attr_writer :include_platform_defaults

        # The configuration governing a checkout mounted from this configuration, resolved
        # through every layer (its own overrides, the plan's, and the account's) — the
        # shape a session's `payment_method_configuration` carries. Apply it over the
        # payment method types catalogue for the offerable set. `null` means platform
        # defaults; `payment_method_configuration` stays this configuration's own editable
        # override.
        sig do
          params(
            disabled: T::Array[String],
            enabled: T::Array[String],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Payment methods explicitly disabled.
          disabled: nil,
          # Payment methods explicitly enabled.
          enabled: nil,
          # Whether platform default payment methods are included.
          include_platform_defaults: nil
        )
        end

        sig do
          override.returns(
            {
              disabled: T::Array[String],
              enabled: T::Array[String],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # Payment methods explicitly disabled for checkout.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :disabled

        sig { params(disabled: T::Array[String]).void }
        attr_writer :disabled

        # Payment methods explicitly enabled for checkout.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :enabled

        sig { params(enabled: T::Array[String]).void }
        attr_writer :enabled

        # Whether platform default payment methods are included.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_platform_defaults

        sig { params(include_platform_defaults: T::Boolean).void }
        attr_writer :include_platform_defaults

        # Payment method overrides for this checkout. `null` when it uses the plan or
        # platform defaults.
        sig do
          params(
            disabled: T::Array[String],
            enabled: T::Array[String],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Payment methods explicitly disabled for checkout.
          disabled: nil,
          # Payment methods explicitly enabled for checkout.
          enabled: nil,
          # Whether platform default payment methods are included.
          include_platform_defaults: nil
        )
        end

        sig do
          override.returns(
            {
              disabled: T::Array[String],
              enabled: T::Array[String],
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
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # Plan ID, prefixed `plan_`.
        sig { returns(String) }
        attr_accessor :id

        # Whether this plan accepts local currency payments via adaptive pricing.
        sig { returns(T::Boolean) }
        attr_accessor :adaptive_pricing_enabled

        # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        # `null` for one-time plans.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Three-letter ISO currency code for the plan's prices.
        sig { returns(String) }
        attr_accessor :currency

        # Access duration in days for expiration-based plans.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Initial purchase price in the plan currency.
        sig { returns(Float) }
        attr_accessor :initial_price

        # Billing model for the plan.
        sig do
          returns(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::TaggedSymbol
          )
        end
        attr_accessor :plan_type

        # Sales method for the plan.
        sig do
          returns(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::TaggedSymbol
          )
        end
        attr_accessor :release_method

        # Recurring price charged each billing period.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # 3D Secure behavior for this plan, or `null` to use the account default.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::TaggedSymbol
            )
          )
        end
        attr_accessor :three_ds_level

        # Free trial days before the first renewal charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Whether the plan is visible to customers or hidden from public view.
        sig do
          returns(
            WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
          )
        end
        attr_accessor :visibility

        # Plan used for payment checkout. `null` in setup mode.
        sig do
          params(
            id: String,
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Integer),
            currency: String,
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            plan_type:
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::OrSymbol,
            release_method:
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::OrSymbol,
            renewal_price: Float,
            three_ds_level:
              T.nilable(
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::OrSymbol
              ),
            trial_period_days: T.nilable(Integer),
            visibility:
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Plan ID, prefixed `plan_`.
          id:,
          # Whether this plan accepts local currency payments via adaptive pricing.
          adaptive_pricing_enabled:,
          # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
          # `null` for one-time plans.
          billing_period:,
          # Three-letter ISO currency code for the plan's prices.
          currency:,
          # Access duration in days for expiration-based plans.
          expiration_days:,
          # Initial purchase price in the plan currency.
          initial_price:,
          # Billing model for the plan.
          plan_type:,
          # Sales method for the plan.
          release_method:,
          # Recurring price charged each billing period.
          renewal_price:,
          # 3D Secure behavior for this plan, or `null` to use the account default.
          three_ds_level:,
          # Free trial days before the first renewal charge.
          trial_period_days:,
          # Whether the plan is visible to customers or hidden from public view.
          visibility:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              adaptive_pricing_enabled: T::Boolean,
              billing_period: T.nilable(Integer),
              currency: String,
              expiration_days: T.nilable(Integer),
              initial_price: Float,
              plan_type:
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::TaggedSymbol,
              release_method:
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::TaggedSymbol,
              renewal_price: Float,
              three_ds_level:
                T.nilable(
                  WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::TaggedSymbol
                ),
              trial_period_days: T.nilable(Integer),
              visibility:
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Billing model for the plan.
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::PlanType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sales method for the plan.
        module ReleaseMethod
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUY_NOW =
            T.let(
              :buy_now,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::TaggedSymbol
            )
          WAITLIST =
            T.let(
              :waitlist,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ReleaseMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # 3D Secure behavior for this plan, or `null` to use the account default.
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANDATE_CHALLENGE =
            T.let(
              :mandate_challenge,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::TaggedSymbol
            )
          FRICTIONLESS =
            T.let(
              :frictionless,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::ThreeDSLevel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the plan is visible to customers or hidden from public view.
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # 3D Secure behavior for this checkout, or `null` to use the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(
            :mandate_challenge,
            WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::TaggedSymbol
          )
        FRICTIONLESS =
          T.let(
            :frictionless,
            WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
