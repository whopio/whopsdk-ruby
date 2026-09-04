# typed: strong

module WhopSDK
  module Models
    class CheckoutConfigurationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CheckoutConfigurationCreateParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # Account ID, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Affiliate code to apply to the checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # Currency used for setup-mode payment method availability.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # Custom key-value metadata copied to payments and memberships.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later. Defaults to `payment`.
      sig do
        returns(
          T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: WhopSDK::CheckoutConfigurationCreateParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      # Payment method overrides for this checkout. `null` uses the plan or platform
      # defaults.
      sig do
        returns(
          T.nilable(
            WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration
          )
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # Plan attributes used to create or find a plan for this checkout configuration.
      # Mutually exclusive with `plan_id`.
      sig do
        returns(T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan))
      end
      attr_reader :plan

      sig do
        params(
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # URL customers are sent to after checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # 3D Secure behavior for this checkout.
      sig do
        returns(
          T.nilable(
            WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::OrSymbol
          )
        )
      end
      attr_accessor :three_ds_level

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          account_id: String,
          affiliate_code: T.nilable(String),
          currency: T.nilable(String),
          metadata: T.nilable(T.anything),
          mode: WhopSDK::CheckoutConfigurationCreateParams::Mode::OrSymbol,
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash),
          plan_id: T.nilable(String),
          redirect_url: T.nilable(String),
          three_ds_level:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::OrSymbol
            ),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID, prefixed `biz_`.
        account_id: nil,
        # Affiliate code to apply to the checkout.
        affiliate_code: nil,
        # Currency used for setup-mode payment method availability.
        currency: nil,
        # Custom key-value metadata copied to payments and memberships.
        metadata: nil,
        # Controls whether checkout charges the buyer immediately or saves payment details
        # for later. Defaults to `payment`.
        mode: nil,
        # Payment method overrides for this checkout. `null` uses the plan or platform
        # defaults.
        payment_method_configuration: nil,
        # Plan attributes used to create or find a plan for this checkout configuration.
        # Mutually exclusive with `plan_id`.
        plan: nil,
        # Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
        plan_id: nil,
        # URL customers are sent to after checkout.
        redirect_url: nil,
        # 3D Secure behavior for this checkout.
        three_ds_level: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            affiliate_code: T.nilable(String),
            currency: T.nilable(String),
            metadata: T.nilable(T.anything),
            mode: WhopSDK::CheckoutConfigurationCreateParams::Mode::OrSymbol,
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration
              ),
            plan: T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan),
            plan_id: T.nilable(String),
            redirect_url: T.nilable(String),
            three_ds_level:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::OrSymbol
              ),
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later. Defaults to `payment`.
      module Mode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CheckoutConfigurationCreateParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(
            :payment,
            WhopSDK::CheckoutConfigurationCreateParams::Mode::TaggedSymbol
          )
        SETUP =
          T.let(
            :setup,
            WhopSDK::CheckoutConfigurationCreateParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CheckoutConfigurationCreateParams::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration,
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

        # Payment method overrides for this checkout. `null` uses the plan or platform
        # defaults.
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
              WhopSDK::CheckoutConfigurationCreateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID for the inline plan, prefixed `biz_`. Defaults to the account
        # resolved from the request.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Three-letter ISO currency code for the plan's prices.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Customer-visible plan description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Access duration in days for expiration-based plans.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Whether to create a new plan instead of reusing a matching one.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :force_create_new_plan

        # Initial purchase price in the plan currency.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # Custom key-value metadata stored on the plan.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :metadata

        # Tax classification override for this plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :override_tax_type

        # Payment method overrides for the inline plan. `null` uses platform defaults.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration
            )
          )
        end
        attr_reader :payment_method_configuration

        sig do
          params(
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration::OrHash
              )
          ).void
        end
        attr_writer :payment_method_configuration

        # Billing model for the plan.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::OrSymbol
            )
          )
        end
        attr_accessor :plan_type

        # Product ID the inline plan should belong to, prefixed `prod_`.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # Sales method for the plan.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::OrSymbol
            )
          )
        end
        attr_accessor :release_method

        # Recurring price charged each billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # Units available for purchase.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stock

        # 3D Secure behavior for the inline plan, or `null` to use the account default.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::OrSymbol
            )
          )
        end
        attr_accessor :three_ds_level

        # Plan display name shown to customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Free trial days before the first renewal charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Whether the plan has unlimited stock.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :unlimited_stock

        # Whether the plan is visible to customers or hidden from public view.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::OrSymbol
            )
          )
        end
        attr_accessor :visibility

        # Plan attributes used to create or find a plan for this checkout configuration.
        # Mutually exclusive with `plan_id`.
        sig do
          params(
            account_id: T.nilable(String),
            billing_period: T.nilable(Integer),
            currency: T.nilable(String),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            force_create_new_plan: T.nilable(T::Boolean),
            initial_price: T.nilable(Float),
            metadata: T.nilable(T.anything),
            override_tax_type: T.nilable(String),
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration::OrHash
              ),
            plan_type:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::OrSymbol
              ),
            product_id: T.nilable(String),
            release_method:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::OrSymbol
              ),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            three_ds_level:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::OrSymbol
              ),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Account ID for the inline plan, prefixed `biz_`. Defaults to the account
          # resolved from the request.
          account_id: nil,
          # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
          billing_period: nil,
          # Three-letter ISO currency code for the plan's prices.
          currency: nil,
          # Customer-visible plan description.
          description: nil,
          # Access duration in days for expiration-based plans.
          expiration_days: nil,
          # Whether to create a new plan instead of reusing a matching one.
          force_create_new_plan: nil,
          # Initial purchase price in the plan currency.
          initial_price: nil,
          # Custom key-value metadata stored on the plan.
          metadata: nil,
          # Tax classification override for this plan.
          override_tax_type: nil,
          # Payment method overrides for the inline plan. `null` uses platform defaults.
          payment_method_configuration: nil,
          # Billing model for the plan.
          plan_type: nil,
          # Product ID the inline plan should belong to, prefixed `prod_`.
          product_id: nil,
          # Sales method for the plan.
          release_method: nil,
          # Recurring price charged each billing period.
          renewal_price: nil,
          # Units available for purchase.
          stock: nil,
          # 3D Secure behavior for the inline plan, or `null` to use the account default.
          three_ds_level: nil,
          # Plan display name shown to customers.
          title: nil,
          # Free trial days before the first renewal charge.
          trial_period_days: nil,
          # Whether the plan has unlimited stock.
          unlimited_stock: nil,
          # Whether the plan is visible to customers or hidden from public view.
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              account_id: T.nilable(String),
              billing_period: T.nilable(Integer),
              currency: T.nilable(String),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              force_create_new_plan: T.nilable(T::Boolean),
              initial_price: T.nilable(Float),
              metadata: T.nilable(T.anything),
              override_tax_type: T.nilable(String),
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration
                ),
              plan_type:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::OrSymbol
                ),
              product_id: T.nilable(String),
              release_method:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::OrSymbol
                ),
              renewal_price: T.nilable(Float),
              stock: T.nilable(Integer),
              three_ds_level:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::OrSymbol
                ),
              title: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
              visibility:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration,
                WhopSDK::Internal::AnyHash
              )
            end

          # Payment methods explicitly disabled for this plan.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :disabled

          sig { params(disabled: T::Array[String]).void }
          attr_writer :disabled

          # Payment methods explicitly enabled for this plan.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :enabled

          sig { params(enabled: T::Array[String]).void }
          attr_writer :enabled

          # Whether platform default payment methods are included.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_platform_defaults

          sig { params(include_platform_defaults: T::Boolean).void }
          attr_writer :include_platform_defaults

          # Payment method overrides for the inline plan. `null` uses platform defaults.
          sig do
            params(
              disabled: T::Array[String],
              enabled: T::Array[String],
              include_platform_defaults: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Payment methods explicitly disabled for this plan.
            disabled: nil,
            # Payment methods explicitly enabled for this plan.
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

        # Billing model for the plan.
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PlanType::TaggedSymbol
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUY_NOW =
            T.let(
              :buy_now,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::TaggedSymbol
            )
          WAITLIST =
            T.let(
              :waitlist,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ReleaseMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # 3D Secure behavior for the inline plan, or `null` to use the account default.
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANDATE_CHALLENGE =
            T.let(
              :mandate_challenge,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::TaggedSymbol
            )
          FRICTIONLESS =
            T.let(
              :frictionless,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::ThreeDSLevel::TaggedSymbol
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # 3D Secure behavior for this checkout.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(
            :mandate_challenge,
            WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::TaggedSymbol
          )
        FRICTIONLESS =
          T.let(
            :frictionless,
            WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CheckoutConfigurationCreateParams::ThreeDSLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
