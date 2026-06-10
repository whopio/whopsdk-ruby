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

      sig { returns(String) }
      attr_accessor :id

      # Whether this plan accepts local currency payments via adaptive pricing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :adaptive_pricing_enabled

      # The number of days between recurring charges. For example, 30 for monthly or 365
      # for yearly.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # Checkout styling overrides for this plan.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :checkout_styling

      # The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # An array of custom field definitions to collect from customers at checkout.
      # Omitting this field clears existing custom fields.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]))
      end
      attr_accessor :custom_fields

      # A text description of the plan displayed to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires and access is revoked.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # An image displayed on the product page to represent this plan.
      sig { returns(T.nilable(WhopSDK::PlanUpdateParams::Image)) }
      attr_reader :image

      sig do
        params(image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash)).void
      end
      attr_writer :image

      # The amount charged on the first purchase, in the plan's currency (e.g., 10.43
      # for $10.43).
      sig { returns(T.nilable(Float)) }
      attr_accessor :initial_price

      # Private notes visible only to the business owner. Not shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Whether this plan uses legacy payment method controls.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :legacy_payment_method_controls

      # Custom key-value pairs to store on the plan. Included in webhook payloads for
      # payment and membership events.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Whether to offer a retention discount when a customer attempts to cancel.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :offer_cancel_discount

      # Override the default tax classification for this specific plan.
      sig { returns(T.nilable(String)) }
      attr_reader :override_tax_type

      sig { params(override_tax_type: String).void }
      attr_writer :override_tax_type

      # Explicit payment method configuration for the plan. When not provided, the
      # company's defaults apply.
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

      # The amount charged each billing period for recurring plans, in the plan's
      # currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :renewal_price

      # The maximum number of units available for purchase. Ignored when unlimited_stock
      # is true.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # A comparison price displayed with a strikethrough for the initial price.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_initial_price

      # A comparison price displayed with a strikethrough for the renewal price.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_renewal_price

      # The 3D Secure behavior for this plan. Send null to inherit the account default.
      sig do
        returns(T.nilable(WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol))
      end
      attr_reader :three_ds_level

      sig do
        params(
          three_ds_level: WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol
        ).void
      end
      attr_writer :three_ds_level

      # The display name of the plan shown to customers on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a recurring plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock. When true, the stock field is ignored.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unlimited_stock

      # Whether the plan is visible to customers or hidden from public view.
      sig { returns(T.nilable(String)) }
      attr_reader :visibility

      sig { params(visibility: String).void }
      attr_writer :visibility

      sig do
        params(
          id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
          currency: String,
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          metadata: T.nilable(T.anything),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: String,
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          three_ds_level: WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol,
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled: nil,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # Checkout styling overrides for this plan.
        checkout_styling: nil,
        # The three-letter ISO currency code for the plan's pricing. Defaults to USD.
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        # Omitting this field clears existing custom fields.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase, in the plan's currency (e.g., 10.43
        # for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Custom key-value pairs to store on the plan. Included in webhook payloads for
        # payment and membership events.
        metadata: nil,
        # Whether to offer a retention discount when a customer attempts to cancel.
        offer_cancel_discount: nil,
        # Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        payment_method_configuration: nil,
        # The amount charged each billing period for recurring plans, in the plan's
        # currency.
        renewal_price: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # A comparison price displayed with a strikethrough for the initial price.
        strike_through_initial_price: nil,
        # A comparison price displayed with a strikethrough for the renewal price.
        strike_through_renewal_price: nil,
        # The 3D Secure behavior for this plan. Send null to inherit the account default.
        three_ds_level: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adaptive_pricing_enabled: T.nilable(T::Boolean),
            billing_period: T.nilable(Integer),
            checkout_styling: T.nilable(T.anything),
            currency: String,
            custom_fields:
              T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            image: T.nilable(WhopSDK::PlanUpdateParams::Image),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            legacy_payment_method_controls: T.nilable(T::Boolean),
            metadata: T.nilable(T.anything),
            offer_cancel_discount: T.nilable(T::Boolean),
            override_tax_type: String,
            payment_method_configuration:
              T.nilable(WhopSDK::PlanUpdateParams::PaymentMethodConfiguration),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            strike_through_initial_price: T.nilable(Float),
            strike_through_renewal_price: T.nilable(Float),
            three_ds_level: WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol,
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: String,
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

        # The ID of the custom field (if being updated).
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of the custom field.
        sig do
          returns(
            T.nilable(
              WhopSDK::PlanUpdateParams::CustomField::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              WhopSDK::PlanUpdateParams::CustomField::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        # The name of the custom field.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The order of the field.
        sig { returns(T.nilable(Integer)) }
        attr_reader :order

        sig { params(order: Integer).void }
        attr_writer :order

        # An example response displayed in the input field.
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether or not the field is required.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :required

        sig { params(required: T::Boolean).void }
        attr_writer :required

        sig do
          params(
            id: String,
            field_type:
              WhopSDK::PlanUpdateParams::CustomField::FieldType::OrSymbol,
            name: String,
            order: Integer,
            placeholder: T.nilable(String),
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the custom field (if being updated).
          id: nil,
          # The type of the custom field.
          field_type: nil,
          # The name of the custom field.
          name: nil,
          # The order of the field.
          order: nil,
          # An example response displayed in the input field.
          placeholder: nil,
          # Whether or not the field is required.
          required: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              field_type:
                WhopSDK::PlanUpdateParams::CustomField::FieldType::OrSymbol,
              name: String,
              order: Integer,
              placeholder: T.nilable(String),
              required: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The type of the custom field.
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PlanUpdateParams::CustomField::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              WhopSDK::PlanUpdateParams::CustomField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PlanUpdateParams::CustomField::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Image < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PlanUpdateParams::Image, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        # An image displayed on the product page to represent this plan.
        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(id: nil, direct_upload_id: nil)
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :disabled

        sig { params(disabled: T::Array[String]).void }
        attr_writer :disabled

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :enabled

        sig { params(enabled: T::Array[String]).void }
        attr_writer :enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_platform_defaults

        sig { params(include_platform_defaults: T::Boolean).void }
        attr_writer :include_platform_defaults

        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        sig do
          params(
            disabled: T::Array[String],
            enabled: T::Array[String],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          disabled: nil,
          enabled: nil,
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

      # The 3D Secure behavior for this plan. Send null to inherit the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PlanUpdateParams::ThreeDSLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(
            :mandate_challenge,
            WhopSDK::PlanUpdateParams::ThreeDSLevel::TaggedSymbol
          )
        FRICTIONLESS =
          T.let(
            :frictionless,
            WhopSDK::PlanUpdateParams::ThreeDSLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::PlanUpdateParams::ThreeDSLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
