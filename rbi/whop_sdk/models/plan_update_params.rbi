# typed: strong

module WhopSDK
  module Models
    class PlanUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PlanUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The number of days between recurring charges. For example, 30 for monthly or 365
      # for yearly.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # An array of custom field definitions to collect from customers at checkout.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]))
      end
      attr_accessor :custom_fields

      # A text description of the plan displayed to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires and access is revoked. For
      # example, 365 for one-year access.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # An image displayed on the product page to represent this plan.
      sig { returns(T.nilable(WhopSDK::PlanUpdateParams::Image)) }
      attr_reader :image

      sig do
        params(image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash)).void
      end
      attr_writer :image

      # The amount charged on the first purchase. Provided in the plan's currency (e.g.,
      # 10.43 for $10.43).
      sig { returns(T.nilable(Float)) }
      attr_accessor :initial_price

      # Private notes visible only to the business owner. Not shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Whether this plan uses legacy payment method controls.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :legacy_payment_method_controls

      # Whether to offer a retention discount when a customer attempts to cancel.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :offer_cancel_discount

      # Whether or not the tax is included in a plan's price (or if it hasn't been set
      # up)
      sig { returns(T.nilable(WhopSDK::TaxType::OrSymbol)) }
      attr_accessor :override_tax_type

      # Explicit payment method configuration for the plan. Sending null removes any
      # custom configuration.
      sig do
        returns(
          T.nilable(WhopSDK::PlanUpdateParams::PaymentMethodConfiguration)
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # The amount charged each billing period for recurring plans. Provided in the
      # plan's currency (e.g., 10.43 for $10.43).
      sig { returns(T.nilable(Float)) }
      attr_accessor :renewal_price

      # The maximum number of units available for purchase. Ignored when unlimited_stock
      # is true.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # A comparison price displayed with a strikethrough for the initial price.
      # Provided in the plan's currency (e.g., 19.99 for $19.99).
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_initial_price

      # A comparison price displayed with a strikethrough for the renewal price.
      # Provided in the plan's currency (e.g., 19.99 for $19.99).
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_renewal_price

      # The display name of the plan shown to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a recurring plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock. When true, the stock field is ignored.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unlimited_stock

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          billing_period: T.nilable(Integer),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked. For
        # example, 365 for one-year access.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase. Provided in the plan's currency (e.g.,
        # 10.43 for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Whether to offer a retention discount when a customer attempts to cancel.
        offer_cancel_discount: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. Sending null removes any
        # custom configuration.
        payment_method_configuration: nil,
        # The amount charged each billing period for recurring plans. Provided in the
        # plan's currency (e.g., 10.43 for $10.43).
        renewal_price: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # A comparison price displayed with a strikethrough for the initial price.
        # Provided in the plan's currency (e.g., 19.99 for $19.99).
        strike_through_initial_price: nil,
        # A comparison price displayed with a strikethrough for the renewal price.
        # Provided in the plan's currency (e.g., 19.99 for $19.99).
        strike_through_renewal_price: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_period: T.nilable(Integer),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            custom_fields:
              T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            image: T.nilable(WhopSDK::PlanUpdateParams::Image),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            legacy_payment_method_controls: T.nilable(T::Boolean),
            offer_cancel_discount: T.nilable(T::Boolean),
            override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
            payment_method_configuration:
              T.nilable(WhopSDK::PlanUpdateParams::PaymentMethodConfiguration),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            strike_through_initial_price: T.nilable(Float),
            strike_through_renewal_price: T.nilable(Float),
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
              WhopSDK::PlanUpdateParams::CustomField,
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
            T.any(WhopSDK::PlanUpdateParams::Image, WhopSDK::Internal::AnyHash)
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
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration,
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

        # Explicit payment method configuration for the plan. Sending null removes any
        # custom configuration.
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
