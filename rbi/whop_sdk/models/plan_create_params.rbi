# typed: strong

module WhopSDK
  module Models
    class PlanCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PlanCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create this plan for.
      sig { returns(String) }
      attr_accessor :company_id

      # The unique identifier of the product to attach this plan to.
      sig { returns(String) }
      attr_accessor :product_id

      # The number of days between recurring charges. For example, 30 for monthly or 365
      # for yearly.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # An array of custom field definitions to collect from customers at checkout.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField]))
      end
      attr_accessor :custom_fields

      # A text description of the plan displayed to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires and access is revoked. Used for
      # expiration-based plans.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # An image displayed on the product page to represent this plan.
      sig { returns(T.nilable(WhopSDK::PlanCreateParams::Image)) }
      attr_reader :image

      sig do
        params(image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash)).void
      end
      attr_writer :image

      # The amount charged on the first purchase. For one-time plans, this is the full
      # price. For recurring plans, this is an additional charge on top of the renewal
      # price. Provided in the plan's currency (e.g., 10.43 for $10.43).
      sig { returns(T.nilable(Float)) }
      attr_accessor :initial_price

      # Private notes visible only to the business owner. Not shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Whether this plan uses legacy payment method controls.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :legacy_payment_method_controls

      # Whether or not the tax is included in a plan's price (or if it hasn't been set
      # up)
      sig { returns(T.nilable(WhopSDK::TaxType::OrSymbol)) }
      attr_accessor :override_tax_type

      # Explicit payment method configuration for the plan. When not provided, the
      # company's defaults apply.
      sig do
        returns(
          T.nilable(WhopSDK::PlanCreateParams::PaymentMethodConfiguration)
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # The type of plan that can be attached to a product
      sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
      attr_accessor :plan_type

      # The methods of how a plan can be released.
      sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
      attr_accessor :release_method

      # The amount charged each billing period for recurring plans. Provided in the
      # plan's currency (e.g., 10.43 for $10.43).
      sig { returns(T.nilable(Float)) }
      attr_accessor :renewal_price

      # The number of installment payments required before the subscription pauses.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :split_pay_required_payments

      # The maximum number of units available for purchase. Ignored when unlimited_stock
      # is true.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # The display name of the plan shown to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a recurring plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock. When true, the stock field is ignored.
      # Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unlimited_stock

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          company_id: String,
          product_id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
          release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create this plan for.
        company_id:,
        # The unique identifier of the product to attach this plan to.
        product_id:,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked. Used for
        # expiration-based plans.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase. For one-time plans, this is the full
        # price. For recurring plans, this is an additional charge on top of the renewal
        # price. Provided in the plan's currency (e.g., 10.43 for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        payment_method_configuration: nil,
        # The type of plan that can be attached to a product
        plan_type: nil,
        # The methods of how a plan can be released.
        release_method: nil,
        # The amount charged each billing period for recurring plans. Provided in the
        # plan's currency (e.g., 10.43 for $10.43).
        renewal_price: nil,
        # The number of installment payments required before the subscription pauses.
        split_pay_required_payments: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        # Defaults to true.
        unlimited_stock: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            product_id: String,
            billing_period: T.nilable(Integer),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            custom_fields:
              T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField]),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            image: T.nilable(WhopSDK::PlanCreateParams::Image),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            legacy_payment_method_controls: T.nilable(T::Boolean),
            override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
            payment_method_configuration:
              T.nilable(WhopSDK::PlanCreateParams::PaymentMethodConfiguration),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            split_pay_required_payments: T.nilable(Integer),
            stock: T.nilable(Integer),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanCreateParams::CustomField,
              WhopSDK::Internal::AnyHash
            )
          end

        # The type of the custom field.
        sig { returns(Symbol) }
        attr_accessor :field_type

        # The name of the custom field.
        sig { returns(String) }
        attr_accessor :name

        # The ID of the custom field (if being updated)
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # The order of the field.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :order

        # The placeholder value of the field.
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether or not the field is required.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :required

        sig do
          params(
            name: String,
            id: T.nilable(String),
            order: T.nilable(Integer),
            placeholder: T.nilable(String),
            required: T.nilable(T::Boolean),
            field_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the custom field.
          name:,
          # The ID of the custom field (if being updated)
          id: nil,
          # The order of the field.
          order: nil,
          # The placeholder value of the field.
          placeholder: nil,
          # Whether or not the field is required.
          required: nil,
          # The type of the custom field.
          field_type: :text
        )
        end

        sig do
          override.returns(
            {
              field_type: Symbol,
              name: String,
              id: T.nilable(String),
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end

      class Image < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PlanCreateParams::Image, WhopSDK::Internal::AnyHash)
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # An image displayed on the product page to represent this plan.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # An array of payment method identifiers that are explicitly disabled. Only
        # applies if the include_platform_defaults is true.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]) }
        attr_accessor :disabled

        # An array of payment method identifiers that are explicitly enabled. This means
        # these payment methods will be shown on checkout. Example use case is to only
        # enable a specific payment method like cashapp, or extending the platform
        # defaults with additional methods.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]) }
        attr_accessor :enabled

        # Whether Whop's platform default payment method enablement settings are included
        # in this configuration. The full list of default payment methods can be found in
        # the documentation at docs.whop.com/payments.
        sig { returns(T::Boolean) }
        attr_accessor :include_platform_defaults

        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
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
              disabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
              enabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
