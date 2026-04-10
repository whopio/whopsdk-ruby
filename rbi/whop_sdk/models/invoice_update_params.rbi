# typed: strong

module WhopSDK
  module Models
    class InvoiceUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The date and time when the invoice will be automatically finalized and charged.
      sig { returns(T.nilable(Time)) }
      attr_accessor :automatically_finalizes_at

      # Inline billing address to create or update a mailing address for this invoice.
      sig { returns(T.nilable(WhopSDK::InvoiceUpdateParams::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(WhopSDK::InvoiceUpdateParams::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # Whether to charge the customer a buyer fee on this invoice.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :charge_buyer_fee

      # The method of collection for an invoice.
      sig { returns(T.nilable(WhopSDK::CollectionMethod::OrSymbol)) }
      attr_accessor :collection_method

      # The name of the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # The date by which the invoice must be paid.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      # The email address of the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # Line items that break down the invoice total.
      sig do
        returns(T.nilable(T::Array[WhopSDK::InvoiceUpdateParams::LineItem]))
      end
      attr_accessor :line_items

      # The unique identifier of an existing mailing address to attach.
      sig { returns(T.nilable(String)) }
      attr_accessor :mailing_address_id

      # The unique identifier of a member to assign as the customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # The unique identifier of the payment method to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Updated plan attributes.
      sig { returns(T.nilable(WhopSDK::InvoiceUpdateParams::Plan)) }
      attr_reader :plan

      sig do
        params(plan: T.nilable(WhopSDK::InvoiceUpdateParams::Plan::OrHash)).void
      end
      attr_writer :plan

      sig do
        params(
          id: String,
          automatically_finalizes_at: T.nilable(Time),
          billing_address:
            T.nilable(WhopSDK::InvoiceUpdateParams::BillingAddress::OrHash),
          charge_buyer_fee: T.nilable(T::Boolean),
          collection_method: T.nilable(WhopSDK::CollectionMethod::OrSymbol),
          customer_name: T.nilable(String),
          due_date: T.nilable(Time),
          email_address: T.nilable(String),
          line_items:
            T.nilable(T::Array[WhopSDK::InvoiceUpdateParams::LineItem::OrHash]),
          mailing_address_id: T.nilable(String),
          member_id: T.nilable(String),
          payment_method_id: T.nilable(String),
          plan: T.nilable(WhopSDK::InvoiceUpdateParams::Plan::OrHash),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The date and time when the invoice will be automatically finalized and charged.
        automatically_finalizes_at: nil,
        # Inline billing address to create or update a mailing address for this invoice.
        billing_address: nil,
        # Whether to charge the customer a buyer fee on this invoice.
        charge_buyer_fee: nil,
        # The method of collection for an invoice.
        collection_method: nil,
        # The name of the customer.
        customer_name: nil,
        # The date by which the invoice must be paid.
        due_date: nil,
        # The email address of the customer.
        email_address: nil,
        # Line items that break down the invoice total.
        line_items: nil,
        # The unique identifier of an existing mailing address to attach.
        mailing_address_id: nil,
        # The unique identifier of a member to assign as the customer.
        member_id: nil,
        # The unique identifier of the payment method to charge.
        payment_method_id: nil,
        # Updated plan attributes.
        plan: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            automatically_finalizes_at: T.nilable(Time),
            billing_address:
              T.nilable(WhopSDK::InvoiceUpdateParams::BillingAddress),
            charge_buyer_fee: T.nilable(T::Boolean),
            collection_method: T.nilable(WhopSDK::CollectionMethod::OrSymbol),
            customer_name: T.nilable(String),
            due_date: T.nilable(Time),
            email_address: T.nilable(String),
            line_items:
              T.nilable(T::Array[WhopSDK::InvoiceUpdateParams::LineItem]),
            mailing_address_id: T.nilable(String),
            member_id: T.nilable(String),
            payment_method_id: T.nilable(String),
            plan: T.nilable(WhopSDK::InvoiceUpdateParams::Plan),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceUpdateParams::BillingAddress,
              WhopSDK::Internal::AnyHash
            )
          end

        # The city of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The country of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # The line 1 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The line 2 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The name of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The phone number of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The state of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The type of tax identifier
        sig { returns(T.nilable(WhopSDK::TaxIdentifierType::OrSymbol)) }
        attr_accessor :tax_id_type

        # The value of the tax identifier.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_id_value

        # Inline billing address to create or update a mailing address for this invoice.
        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            name: T.nilable(String),
            phone: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            tax_id_type: T.nilable(WhopSDK::TaxIdentifierType::OrSymbol),
            tax_id_value: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The city of the address.
          city: nil,
          # The country of the address.
          country: nil,
          # The line 1 of the address.
          line1: nil,
          # The line 2 of the address.
          line2: nil,
          # The name of the customer.
          name: nil,
          # The phone number of the customer.
          phone: nil,
          # The postal code of the address.
          postal_code: nil,
          # The state of the address.
          state: nil,
          # The type of tax identifier
          tax_id_type: nil,
          # The value of the tax identifier.
          tax_id_value: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              phone: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String),
              tax_id_type: T.nilable(WhopSDK::TaxIdentifierType::OrSymbol),
              tax_id_value: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class LineItem < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceUpdateParams::LineItem,
              WhopSDK::Internal::AnyHash
            )
          end

        # The label or description for this line item.
        sig { returns(String) }
        attr_accessor :label

        # The unit price for this line item. Provided as a number in the specified
        # currency. Eg: 10.43 for $10.43
        sig { returns(Float) }
        attr_accessor :unit_price

        # The quantity of this line item. Defaults to 1.
        sig { returns(T.nilable(Float)) }
        attr_accessor :quantity

        # A single line item to include on the invoice, with a label, quantity, and unit
        # price.
        sig do
          params(
            label: String,
            unit_price: Float,
            quantity: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # The label or description for this line item.
          label:,
          # The unit price for this line item. Provided as a number in the specified
          # currency. Eg: 10.43 for $10.43
          unit_price:,
          # The quantity of this line item. Defaults to 1.
          quantity: nil
        )
        end

        sig do
          override.returns(
            { label: String, unit_price: Float, quantity: T.nilable(Float) }
          )
        end
        def to_hash
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceUpdateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The interval in days at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(T::Array[WhopSDK::InvoiceUpdateParams::Plan::CustomField])
          )
        end
        attr_accessor :custom_fields

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The number of days until the membership expires and revokes access (expiration
        # plans). For example, 365 for a one-year access period.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # An additional amount charged upon first purchase. Use only if a one time payment
        # OR you want to charge an additional amount on top of the renewal price. Provided
        # as a number in the specified currency. Eg: 10.43 for $10.43
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # A personal description or notes section for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # Whether this plan uses legacy payment method controls
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :legacy_payment_method_controls

        # The explicit payment method configuration for the plan. If not provided, the
        # platform or company's defaults will apply.
        sig do
          returns(
            T.nilable(
              WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration
            )
          )
        end
        attr_reader :payment_method_configuration

        sig do
          params(
            payment_method_configuration:
              T.nilable(
                WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration::OrHash
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

        # The amount the customer is charged every billing period. Use only if a recurring
        # payment. Provided as a number in the specified currency. Eg: 10.43 for $10.43
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # The number of units available for purchase.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stock

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # When true, the plan has unlimited stock (stock field is ignored). When false,
        # purchases are limited by the stock field.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :unlimited_stock

        # Visibility of a resource
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # Updated plan attributes.
        sig do
          params(
            billing_period: T.nilable(Integer),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceUpdateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            legacy_payment_method_controls: T.nilable(T::Boolean),
            payment_method_configuration:
              T.nilable(
                WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration::OrHash
              ),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The interval in days at which the plan charges (renewal plans).
          billing_period: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # The description of the plan.
          description: nil,
          # The number of days until the membership expires and revokes access (expiration
          # plans). For example, 365 for a one-year access period.
          expiration_days: nil,
          # An additional amount charged upon first purchase. Use only if a one time payment
          # OR you want to charge an additional amount on top of the renewal price. Provided
          # as a number in the specified currency. Eg: 10.43 for $10.43
          initial_price: nil,
          # A personal description or notes section for the business.
          internal_notes: nil,
          # Whether this plan uses legacy payment method controls
          legacy_payment_method_controls: nil,
          # The explicit payment method configuration for the plan. If not provided, the
          # platform or company's defaults will apply.
          payment_method_configuration: nil,
          # The type of plan that can be attached to a product
          plan_type: nil,
          # The methods of how a plan can be released.
          release_method: nil,
          # The amount the customer is charged every billing period. Use only if a recurring
          # payment. Provided as a number in the specified currency. Eg: 10.43 for $10.43
          renewal_price: nil,
          # The number of units available for purchase.
          stock: nil,
          # The number of free trial days added before a renewal plan.
          trial_period_days: nil,
          # When true, the plan has unlimited stock (stock field is ignored). When false,
          # purchases are limited by the stock field.
          unlimited_stock: nil,
          # Visibility of a resource
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              billing_period: T.nilable(Integer),
              custom_fields:
                T.nilable(
                  T::Array[WhopSDK::InvoiceUpdateParams::Plan::CustomField]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              legacy_payment_method_controls: T.nilable(T::Boolean),
              payment_method_configuration:
                T.nilable(
                  WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration
                ),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              stock: T.nilable(Integer),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
              visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
            }
          )
        end
        def to_hash
        end

        class CustomField < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceUpdateParams::Plan::CustomField,
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

        class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration,
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

          # The explicit payment method configuration for the plan. If not provided, the
          # platform or company's defaults will apply.
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
end
