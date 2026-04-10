# typed: strong

module WhopSDK
  module Models
    class InvoiceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Parameters for CreateInvoice
      sig do
        returns(
          T.any(
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct,
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::OrHash,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Parameters for CreateInvoice
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct,
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Parameters for CreateInvoice
      module Body
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID
            )
          end

        class CreateInvoiceInputWithProduct < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct,
                WhopSDK::Internal::AnyHash
              )
            end

          # How the invoice should be collected. Use charge_automatically to charge a stored
          # payment method, or send_invoice to email the customer.
          sig { returns(WhopSDK::CollectionMethod::OrSymbol) }
          attr_accessor :collection_method

          # The unique identifier of the company to create this invoice for.
          sig { returns(String) }
          attr_accessor :company_id

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::OrHash
            ).void
          end
          attr_writer :plan

          # The properties of the product to create for this invoice. Provide this to create
          # a new product inline.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Product
            )
          end
          attr_reader :product

          sig do
            params(
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Product::OrHash
            ).void
          end
          attr_writer :product

          # The date and time when the invoice will be automatically finalized and charged.
          # Only valid when collection_method is charge_automatically. If not provided, the
          # charge will be processed immediately.
          sig { returns(T.nilable(Time)) }
          attr_accessor :automatically_finalizes_at

          # Inline billing address to create a new mailing address for this invoice. Cannot
          # be used together with mailing_address_id.
          sig do
            returns(
              T.nilable(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::BillingAddress::OrHash
                )
            ).void
          end
          attr_writer :billing_address

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

          # The date by which the invoice must be paid. Required unless save_as_draft is
          # true.
          sig { returns(T.nilable(Time)) }
          attr_accessor :due_date

          # The email address of the customer. Required when creating an invoice for a
          # customer who is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :email_address

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of an existing member to create this invoice for. If not
          # provided, you must supply an email_address and customer_name.
          sig { returns(T.nilable(String)) }
          attr_accessor :member_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # When true, creates the invoice as a draft without sending or charging. Relaxes
          # customer and due date requirements.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :save_as_draft

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::OrHash,
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Product::OrHash,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              due_date: T.nilable(Time),
              email_address: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              member_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String),
              save_as_draft: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The plan attributes defining the price, currency, and billing interval for this
            # invoice.
            plan:,
            # The properties of the product to create for this invoice. Provide this to create
            # a new product inline.
            product:,
            # The date and time when the invoice will be automatically finalized and charged.
            # Only valid when collection_method is charge_automatically. If not provided, the
            # charge will be processed immediately.
            automatically_finalizes_at: nil,
            # Inline billing address to create a new mailing address for this invoice. Cannot
            # be used together with mailing_address_id.
            billing_address: nil,
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
            # The date by which the invoice must be paid. Required unless save_as_draft is
            # true.
            due_date: nil,
            # The email address of the customer. Required when creating an invoice for a
            # customer who is not yet a member of the company.
            email_address: nil,
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of an existing member to create this invoice for. If not
            # provided, you must supply an email_address and customer_name.
            member_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil,
            # When true, creates the invoice as a draft without sending or charging. Relaxes
            # customer and due date requirements.
            save_as_draft: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan,
                product:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Product,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                due_date: T.nilable(Time),
                email_address: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                member_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String),
                save_as_draft: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The interval in days at which the plan charges (renewal plans).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :billing_period

            # An array of custom field objects.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::CustomField
                  ]
                )
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::PaymentMethodConfiguration::OrHash
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

            # The plan attributes defining the price, currency, and billing interval for this
            # invoice.
            sig do
              params(
                billing_period: T.nilable(Integer),
                custom_fields:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::PaymentMethodConfiguration::OrHash
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
                      T::Array[
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Plan::PaymentMethodConfiguration,
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

          class Product < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::Product,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The title of the product.
            sig { returns(String) }
            attr_accessor :title

            # The ID of the product tax code to apply to this product.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_tax_code_id

            # The properties of the product to create for this invoice. Provide this to create
            # a new product inline.
            sig do
              params(
                title: String,
                product_tax_code_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The title of the product.
              title:,
              # The ID of the product tax code to apply to this product.
              product_tax_code_id: nil
            )
            end

            sig do
              override.returns(
                { title: String, product_tax_code_id: T.nilable(String) }
              )
            end
            def to_hash
            end
          end

          class BillingAddress < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::BillingAddress,
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

            # Inline billing address to create a new mailing address for this invoice. Cannot
            # be used together with mailing_address_id.
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::LineItem,
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
        end

        class CreateInvoiceInputWithProductID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID,
                WhopSDK::Internal::AnyHash
              )
            end

          # How the invoice should be collected. Use charge_automatically to charge a stored
          # payment method, or send_invoice to email the customer.
          sig { returns(WhopSDK::CollectionMethod::OrSymbol) }
          attr_accessor :collection_method

          # The unique identifier of the company to create this invoice for.
          sig { returns(String) }
          attr_accessor :company_id

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::OrHash
            ).void
          end
          attr_writer :plan

          # The unique identifier of an existing product to create this invoice for.
          sig { returns(String) }
          attr_accessor :product_id

          # The date and time when the invoice will be automatically finalized and charged.
          # Only valid when collection_method is charge_automatically. If not provided, the
          # charge will be processed immediately.
          sig { returns(T.nilable(Time)) }
          attr_accessor :automatically_finalizes_at

          # Inline billing address to create a new mailing address for this invoice. Cannot
          # be used together with mailing_address_id.
          sig do
            returns(
              T.nilable(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::BillingAddress::OrHash
                )
            ).void
          end
          attr_writer :billing_address

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

          # The date by which the invoice must be paid. Required unless save_as_draft is
          # true.
          sig { returns(T.nilable(Time)) }
          attr_accessor :due_date

          # The email address of the customer. Required when creating an invoice for a
          # customer who is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :email_address

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of an existing member to create this invoice for. If not
          # provided, you must supply an email_address and customer_name.
          sig { returns(T.nilable(String)) }
          attr_accessor :member_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # When true, creates the invoice as a draft without sending or charging. Relaxes
          # customer and due date requirements.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :save_as_draft

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::OrHash,
              product_id: String,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              due_date: T.nilable(Time),
              email_address: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              member_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String),
              save_as_draft: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The plan attributes defining the price, currency, and billing interval for this
            # invoice.
            plan:,
            # The unique identifier of an existing product to create this invoice for.
            product_id:,
            # The date and time when the invoice will be automatically finalized and charged.
            # Only valid when collection_method is charge_automatically. If not provided, the
            # charge will be processed immediately.
            automatically_finalizes_at: nil,
            # Inline billing address to create a new mailing address for this invoice. Cannot
            # be used together with mailing_address_id.
            billing_address: nil,
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
            # The date by which the invoice must be paid. Required unless save_as_draft is
            # true.
            due_date: nil,
            # The email address of the customer. Required when creating an invoice for a
            # customer who is not yet a member of the company.
            email_address: nil,
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of an existing member to create this invoice for. If not
            # provided, you must supply an email_address and customer_name.
            member_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil,
            # When true, creates the invoice as a draft without sending or charging. Relaxes
            # customer and due date requirements.
            save_as_draft: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan,
                product_id: String,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                due_date: T.nilable(Time),
                email_address: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                member_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String),
                save_as_draft: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The interval in days at which the plan charges (renewal plans).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :billing_period

            # An array of custom field objects.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::CustomField
                  ]
                )
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::PaymentMethodConfiguration::OrHash
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

            # The plan attributes defining the price, currency, and billing interval for this
            # invoice.
            sig do
              params(
                billing_period: T.nilable(Integer),
                custom_fields:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::PaymentMethodConfiguration::OrHash
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
                      T::Array[
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::Plan::PaymentMethodConfiguration,
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

          class BillingAddress < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::BillingAddress,
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

            # Inline billing address to create a new mailing address for this invoice. Cannot
            # be used together with mailing_address_id.
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::LineItem,
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
        end

        sig do
          override.returns(
            T::Array[WhopSDK::InvoiceCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
