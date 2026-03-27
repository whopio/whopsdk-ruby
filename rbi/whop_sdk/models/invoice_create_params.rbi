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
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID,
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress,
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID,
            WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::OrHash,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::OrHash,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::OrHash,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::OrHash
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
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID,
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress,
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID,
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress
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
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress
            )
          end

        class CreateInvoiceInputWithProductAndMemberID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID,
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

          # The date by which the invoice must be paid.
          sig { returns(Time) }
          attr_accessor :due_date

          # The unique identifier of an existing member to create this invoice for. If not
          # provided, you must supply an email_address and customer_name.
          sig { returns(String) }
          attr_accessor :member_id

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::OrHash
            ).void
          end
          attr_writer :plan

          # The properties of the product to create for this invoice. Provide this to create
          # a new product inline.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Product
            )
          end
          attr_reader :product

          sig do
            params(
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Product::OrHash
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
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::OrHash
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

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              due_date: Time,
              member_id: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::OrHash,
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Product::OrHash,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The date by which the invoice must be paid.
            due_date:,
            # The unique identifier of an existing member to create this invoice for. If not
            # provided, you must supply an email_address and customer_name.
            member_id:,
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
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                due_date: Time,
                member_id: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan,
                product:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Product,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::CustomField
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::PaymentMethodConfiguration::OrHash
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
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::PaymentMethodConfiguration::OrHash
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
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Plan::PaymentMethodConfiguration,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::Product,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress,
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
            sig do
              returns(
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::OrSymbol
                )
              )
            end
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
                tax_id_type:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::OrSymbol
                  ),
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
                  tax_id_type:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::OrSymbol
                    ),
                  tax_id_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The type of tax identifier
            module TaxIDType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AD_NRT =
                T.let(
                  :ad_nrt,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AO_TIN =
                T.let(
                  :ao_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AR_CUIT =
                T.let(
                  :ar_cuit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AM_TIN =
                T.let(
                  :am_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AW_TIN =
                T.let(
                  :aw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ABN =
                T.let(
                  :au_abn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ARN =
                T.let(
                  :au_arn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_VAT =
                T.let(
                  :eu_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AZ_TIN =
                T.let(
                  :az_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BS_TIN =
                T.let(
                  :bs_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BH_VAT =
                T.let(
                  :bh_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BD_BIN =
                T.let(
                  :bd_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BB_TIN =
                T.let(
                  :bb_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BY_TIN =
                T.let(
                  :by_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BJ_IFU =
                T.let(
                  :bj_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BO_TIN =
                T.let(
                  :bo_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BA_TIN =
                T.let(
                  :ba_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CNPJ =
                T.let(
                  :br_cnpj,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CPF =
                T.let(
                  :br_cpf,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BG_UIC =
                T.let(
                  :bg_uic,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BF_IFU =
                T.let(
                  :bf_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KH_TIN =
                T.let(
                  :kh_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CM_NIU =
                T.let(
                  :cm_niu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_BN =
                T.let(
                  :ca_bn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_GST_HST =
                T.let(
                  :ca_gst_hst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_BC =
                T.let(
                  :ca_pst_bc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_MB =
                T.let(
                  :ca_pst_mb,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_SK =
                T.let(
                  :ca_pst_sk,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_QST =
                T.let(
                  :ca_qst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CV_NIF =
                T.let(
                  :cv_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CL_TIN =
                T.let(
                  :cl_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CN_TIN =
                T.let(
                  :cn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CO_NIT =
                T.let(
                  :co_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CD_NIF =
                T.let(
                  :cd_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CR_TIN =
                T.let(
                  :cr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HR_OIB =
                T.let(
                  :hr_oib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              DO_RCN =
                T.let(
                  :do_rcn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EC_RUC =
                T.let(
                  :ec_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EG_TIN =
                T.let(
                  :eg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SV_NIT =
                T.let(
                  :sv_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ET_TIN =
                T.let(
                  :et_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_OSS_VAT =
                T.let(
                  :eu_oss_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GE_VAT =
                T.let(
                  :ge_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              DE_STN =
                T.let(
                  :de_stn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GB_VAT =
                T.let(
                  :gb_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GN_NIF =
                T.let(
                  :gn_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HK_BR =
                T.let(
                  :hk_br,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HU_TIN =
                T.let(
                  :hu_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IS_VAT =
                T.let(
                  :is_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IN_GST =
                T.let(
                  :in_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ID_NPWP =
                T.let(
                  :id_npwp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IL_VAT =
                T.let(
                  :il_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_CN =
                T.let(
                  :jp_cn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_RN =
                T.let(
                  :jp_rn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_TRN =
                T.let(
                  :jp_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KZ_BIN =
                T.let(
                  :kz_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KE_PIN =
                T.let(
                  :ke_pin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KG_TIN =
                T.let(
                  :kg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LA_TIN =
                T.let(
                  :la_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_UID =
                T.let(
                  :li_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_VAT =
                T.let(
                  :li_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_FRP =
                T.let(
                  :my_frp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_ITN =
                T.let(
                  :my_itn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_SST =
                T.let(
                  :my_sst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MR_NIF =
                T.let(
                  :mr_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MX_RFC =
                T.let(
                  :mx_rfc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MD_VAT =
                T.let(
                  :md_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ME_PIB =
                T.let(
                  :me_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MA_VAT =
                T.let(
                  :ma_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NP_PAN =
                T.let(
                  :np_pan,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NZ_GST =
                T.let(
                  :nz_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NG_TIN =
                T.let(
                  :ng_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MK_VAT =
                T.let(
                  :mk_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VAT =
                T.let(
                  :no_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VOEC =
                T.let(
                  :no_voec,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              OM_VAT =
                T.let(
                  :om_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PE_RUC =
                T.let(
                  :pe_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PH_TIN =
                T.let(
                  :ph_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PL_NIP =
                T.let(
                  :pl_nip,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RO_TIN =
                T.let(
                  :ro_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_INN =
                T.let(
                  :ru_inn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_KPP =
                T.let(
                  :ru_kpp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SA_VAT =
                T.let(
                  :sa_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SN_NINEA =
                T.let(
                  :sn_ninea,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RS_PIB =
                T.let(
                  :rs_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_GST =
                T.let(
                  :sg_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_UEN =
                T.let(
                  :sg_uen,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SI_TIN =
                T.let(
                  :si_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZA_VAT =
                T.let(
                  :za_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KR_BRN =
                T.let(
                  :kr_brn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ES_CIF =
                T.let(
                  :es_cif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_UID =
                T.let(
                  :ch_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_VAT =
                T.let(
                  :ch_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TW_VAT =
                T.let(
                  :tw_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TJ_TIN =
                T.let(
                  :tj_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TZ_VAT =
                T.let(
                  :tz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TH_VAT =
                T.let(
                  :th_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TR_TIN =
                T.let(
                  :tr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UG_TIN =
                T.let(
                  :ug_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UA_VAT =
                T.let(
                  :ua_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AE_TRN =
                T.let(
                  :ae_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              US_EIN =
                T.let(
                  :us_ein,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UY_RUC =
                T.let(
                  :uy_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_TIN =
                T.let(
                  :uz_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_VAT =
                T.let(
                  :uz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              VE_RIF =
                T.let(
                  :ve_rif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              VN_TIN =
                T.let(
                  :vn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZM_TIN =
                T.let(
                  :zm_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZW_TIN =
                T.let(
                  :zw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SR_FIN =
                T.let(
                  :sr_fin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              XI_VAT =
                T.let(
                  :xi_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class LineItem < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID::LineItem,
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

        class CreateInvoiceInputWithProductAndEmailAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress,
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

          # The date by which the invoice must be paid.
          sig { returns(Time) }
          attr_accessor :due_date

          # The email address of the customer. Required when creating an invoice for a
          # customer who is not yet a member of the company.
          sig { returns(String) }
          attr_accessor :email_address

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::OrHash
            ).void
          end
          attr_writer :plan

          # The properties of the product to create for this invoice. Provide this to create
          # a new product inline.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Product
            )
          end
          attr_reader :product

          sig do
            params(
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Product::OrHash
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
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::OrHash
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

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              due_date: Time,
              email_address: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::OrHash,
              product:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Product::OrHash,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The date by which the invoice must be paid.
            due_date:,
            # The email address of the customer. Required when creating an invoice for a
            # customer who is not yet a member of the company.
            email_address:,
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
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                due_date: Time,
                email_address: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan,
                product:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Product,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::CustomField
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::PaymentMethodConfiguration::OrHash
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
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::PaymentMethodConfiguration::OrHash
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
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Plan::PaymentMethodConfiguration,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::Product,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress,
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
            sig do
              returns(
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                )
              )
            end
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
                tax_id_type:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                  ),
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
                  tax_id_type:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                    ),
                  tax_id_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The type of tax identifier
            module TaxIDType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AD_NRT =
                T.let(
                  :ad_nrt,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AO_TIN =
                T.let(
                  :ao_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AR_CUIT =
                T.let(
                  :ar_cuit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AM_TIN =
                T.let(
                  :am_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AW_TIN =
                T.let(
                  :aw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ABN =
                T.let(
                  :au_abn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ARN =
                T.let(
                  :au_arn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_VAT =
                T.let(
                  :eu_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AZ_TIN =
                T.let(
                  :az_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BS_TIN =
                T.let(
                  :bs_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BH_VAT =
                T.let(
                  :bh_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BD_BIN =
                T.let(
                  :bd_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BB_TIN =
                T.let(
                  :bb_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BY_TIN =
                T.let(
                  :by_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BJ_IFU =
                T.let(
                  :bj_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BO_TIN =
                T.let(
                  :bo_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BA_TIN =
                T.let(
                  :ba_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CNPJ =
                T.let(
                  :br_cnpj,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CPF =
                T.let(
                  :br_cpf,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BG_UIC =
                T.let(
                  :bg_uic,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BF_IFU =
                T.let(
                  :bf_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KH_TIN =
                T.let(
                  :kh_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CM_NIU =
                T.let(
                  :cm_niu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_BN =
                T.let(
                  :ca_bn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_GST_HST =
                T.let(
                  :ca_gst_hst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_BC =
                T.let(
                  :ca_pst_bc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_MB =
                T.let(
                  :ca_pst_mb,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_SK =
                T.let(
                  :ca_pst_sk,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_QST =
                T.let(
                  :ca_qst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CV_NIF =
                T.let(
                  :cv_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CL_TIN =
                T.let(
                  :cl_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CN_TIN =
                T.let(
                  :cn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CO_NIT =
                T.let(
                  :co_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CD_NIF =
                T.let(
                  :cd_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CR_TIN =
                T.let(
                  :cr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HR_OIB =
                T.let(
                  :hr_oib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              DO_RCN =
                T.let(
                  :do_rcn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EC_RUC =
                T.let(
                  :ec_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EG_TIN =
                T.let(
                  :eg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SV_NIT =
                T.let(
                  :sv_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ET_TIN =
                T.let(
                  :et_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_OSS_VAT =
                T.let(
                  :eu_oss_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GE_VAT =
                T.let(
                  :ge_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              DE_STN =
                T.let(
                  :de_stn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GB_VAT =
                T.let(
                  :gb_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GN_NIF =
                T.let(
                  :gn_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HK_BR =
                T.let(
                  :hk_br,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HU_TIN =
                T.let(
                  :hu_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IS_VAT =
                T.let(
                  :is_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IN_GST =
                T.let(
                  :in_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ID_NPWP =
                T.let(
                  :id_npwp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IL_VAT =
                T.let(
                  :il_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_CN =
                T.let(
                  :jp_cn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_RN =
                T.let(
                  :jp_rn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_TRN =
                T.let(
                  :jp_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KZ_BIN =
                T.let(
                  :kz_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KE_PIN =
                T.let(
                  :ke_pin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KG_TIN =
                T.let(
                  :kg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LA_TIN =
                T.let(
                  :la_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_UID =
                T.let(
                  :li_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_VAT =
                T.let(
                  :li_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_FRP =
                T.let(
                  :my_frp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_ITN =
                T.let(
                  :my_itn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_SST =
                T.let(
                  :my_sst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MR_NIF =
                T.let(
                  :mr_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MX_RFC =
                T.let(
                  :mx_rfc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MD_VAT =
                T.let(
                  :md_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ME_PIB =
                T.let(
                  :me_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MA_VAT =
                T.let(
                  :ma_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NP_PAN =
                T.let(
                  :np_pan,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NZ_GST =
                T.let(
                  :nz_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NG_TIN =
                T.let(
                  :ng_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MK_VAT =
                T.let(
                  :mk_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VAT =
                T.let(
                  :no_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VOEC =
                T.let(
                  :no_voec,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              OM_VAT =
                T.let(
                  :om_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PE_RUC =
                T.let(
                  :pe_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PH_TIN =
                T.let(
                  :ph_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PL_NIP =
                T.let(
                  :pl_nip,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RO_TIN =
                T.let(
                  :ro_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_INN =
                T.let(
                  :ru_inn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_KPP =
                T.let(
                  :ru_kpp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SA_VAT =
                T.let(
                  :sa_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SN_NINEA =
                T.let(
                  :sn_ninea,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RS_PIB =
                T.let(
                  :rs_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_GST =
                T.let(
                  :sg_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_UEN =
                T.let(
                  :sg_uen,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SI_TIN =
                T.let(
                  :si_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZA_VAT =
                T.let(
                  :za_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KR_BRN =
                T.let(
                  :kr_brn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ES_CIF =
                T.let(
                  :es_cif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_UID =
                T.let(
                  :ch_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_VAT =
                T.let(
                  :ch_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TW_VAT =
                T.let(
                  :tw_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TJ_TIN =
                T.let(
                  :tj_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TZ_VAT =
                T.let(
                  :tz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TH_VAT =
                T.let(
                  :th_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TR_TIN =
                T.let(
                  :tr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UG_TIN =
                T.let(
                  :ug_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UA_VAT =
                T.let(
                  :ua_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AE_TRN =
                T.let(
                  :ae_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              US_EIN =
                T.let(
                  :us_ein,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UY_RUC =
                T.let(
                  :uy_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_TIN =
                T.let(
                  :uz_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_VAT =
                T.let(
                  :uz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              VE_RIF =
                T.let(
                  :ve_rif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              VN_TIN =
                T.let(
                  :vn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZM_TIN =
                T.let(
                  :zm_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZW_TIN =
                T.let(
                  :zw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SR_FIN =
                T.let(
                  :sr_fin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              XI_VAT =
                T.let(
                  :xi_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class LineItem < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress::LineItem,
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

        class CreateInvoiceInputWithProductIDAndMemberID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID,
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

          # The date by which the invoice must be paid.
          sig { returns(Time) }
          attr_accessor :due_date

          # The unique identifier of an existing member to create this invoice for. If not
          # provided, you must supply an email_address and customer_name.
          sig { returns(String) }
          attr_accessor :member_id

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::OrHash
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
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::OrHash
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

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              due_date: Time,
              member_id: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::OrHash,
              product_id: String,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The date by which the invoice must be paid.
            due_date:,
            # The unique identifier of an existing member to create this invoice for. If not
            # provided, you must supply an email_address and customer_name.
            member_id:,
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
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                due_date: Time,
                member_id: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan,
                product_id: String,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::CustomField
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::PaymentMethodConfiguration::OrHash
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
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::PaymentMethodConfiguration::OrHash
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
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::Plan::PaymentMethodConfiguration,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress,
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
            sig do
              returns(
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::OrSymbol
                )
              )
            end
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
                tax_id_type:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::OrSymbol
                  ),
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
                  tax_id_type:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::OrSymbol
                    ),
                  tax_id_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The type of tax identifier
            module TaxIDType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AD_NRT =
                T.let(
                  :ad_nrt,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AO_TIN =
                T.let(
                  :ao_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AR_CUIT =
                T.let(
                  :ar_cuit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AM_TIN =
                T.let(
                  :am_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AW_TIN =
                T.let(
                  :aw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ABN =
                T.let(
                  :au_abn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ARN =
                T.let(
                  :au_arn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_VAT =
                T.let(
                  :eu_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AZ_TIN =
                T.let(
                  :az_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BS_TIN =
                T.let(
                  :bs_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BH_VAT =
                T.let(
                  :bh_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BD_BIN =
                T.let(
                  :bd_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BB_TIN =
                T.let(
                  :bb_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BY_TIN =
                T.let(
                  :by_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BJ_IFU =
                T.let(
                  :bj_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BO_TIN =
                T.let(
                  :bo_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BA_TIN =
                T.let(
                  :ba_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CNPJ =
                T.let(
                  :br_cnpj,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CPF =
                T.let(
                  :br_cpf,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BG_UIC =
                T.let(
                  :bg_uic,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              BF_IFU =
                T.let(
                  :bf_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KH_TIN =
                T.let(
                  :kh_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CM_NIU =
                T.let(
                  :cm_niu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_BN =
                T.let(
                  :ca_bn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_GST_HST =
                T.let(
                  :ca_gst_hst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_BC =
                T.let(
                  :ca_pst_bc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_MB =
                T.let(
                  :ca_pst_mb,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_SK =
                T.let(
                  :ca_pst_sk,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_QST =
                T.let(
                  :ca_qst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CV_NIF =
                T.let(
                  :cv_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CL_TIN =
                T.let(
                  :cl_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CN_TIN =
                T.let(
                  :cn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CO_NIT =
                T.let(
                  :co_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CD_NIF =
                T.let(
                  :cd_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CR_TIN =
                T.let(
                  :cr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HR_OIB =
                T.let(
                  :hr_oib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              DO_RCN =
                T.let(
                  :do_rcn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EC_RUC =
                T.let(
                  :ec_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EG_TIN =
                T.let(
                  :eg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SV_NIT =
                T.let(
                  :sv_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ET_TIN =
                T.let(
                  :et_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_OSS_VAT =
                T.let(
                  :eu_oss_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GE_VAT =
                T.let(
                  :ge_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              DE_STN =
                T.let(
                  :de_stn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GB_VAT =
                T.let(
                  :gb_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              GN_NIF =
                T.let(
                  :gn_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HK_BR =
                T.let(
                  :hk_br,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              HU_TIN =
                T.let(
                  :hu_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IS_VAT =
                T.let(
                  :is_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IN_GST =
                T.let(
                  :in_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ID_NPWP =
                T.let(
                  :id_npwp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              IL_VAT =
                T.let(
                  :il_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_CN =
                T.let(
                  :jp_cn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_RN =
                T.let(
                  :jp_rn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_TRN =
                T.let(
                  :jp_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KZ_BIN =
                T.let(
                  :kz_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KE_PIN =
                T.let(
                  :ke_pin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KG_TIN =
                T.let(
                  :kg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LA_TIN =
                T.let(
                  :la_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_UID =
                T.let(
                  :li_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_VAT =
                T.let(
                  :li_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_FRP =
                T.let(
                  :my_frp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_ITN =
                T.let(
                  :my_itn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_SST =
                T.let(
                  :my_sst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MR_NIF =
                T.let(
                  :mr_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MX_RFC =
                T.let(
                  :mx_rfc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MD_VAT =
                T.let(
                  :md_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ME_PIB =
                T.let(
                  :me_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MA_VAT =
                T.let(
                  :ma_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NP_PAN =
                T.let(
                  :np_pan,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NZ_GST =
                T.let(
                  :nz_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NG_TIN =
                T.let(
                  :ng_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              MK_VAT =
                T.let(
                  :mk_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VAT =
                T.let(
                  :no_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VOEC =
                T.let(
                  :no_voec,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              OM_VAT =
                T.let(
                  :om_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PE_RUC =
                T.let(
                  :pe_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PH_TIN =
                T.let(
                  :ph_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              PL_NIP =
                T.let(
                  :pl_nip,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RO_TIN =
                T.let(
                  :ro_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_INN =
                T.let(
                  :ru_inn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_KPP =
                T.let(
                  :ru_kpp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SA_VAT =
                T.let(
                  :sa_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SN_NINEA =
                T.let(
                  :sn_ninea,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              RS_PIB =
                T.let(
                  :rs_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_GST =
                T.let(
                  :sg_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_UEN =
                T.let(
                  :sg_uen,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SI_TIN =
                T.let(
                  :si_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZA_VAT =
                T.let(
                  :za_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              KR_BRN =
                T.let(
                  :kr_brn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ES_CIF =
                T.let(
                  :es_cif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_UID =
                T.let(
                  :ch_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_VAT =
                T.let(
                  :ch_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TW_VAT =
                T.let(
                  :tw_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TJ_TIN =
                T.let(
                  :tj_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TZ_VAT =
                T.let(
                  :tz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TH_VAT =
                T.let(
                  :th_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              TR_TIN =
                T.let(
                  :tr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UG_TIN =
                T.let(
                  :ug_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UA_VAT =
                T.let(
                  :ua_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              AE_TRN =
                T.let(
                  :ae_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              US_EIN =
                T.let(
                  :us_ein,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UY_RUC =
                T.let(
                  :uy_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_TIN =
                T.let(
                  :uz_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_VAT =
                T.let(
                  :uz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              VE_RIF =
                T.let(
                  :ve_rif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              VN_TIN =
                T.let(
                  :vn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZM_TIN =
                T.let(
                  :zm_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZW_TIN =
                T.let(
                  :zw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              SR_FIN =
                T.let(
                  :sr_fin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )
              XI_VAT =
                T.let(
                  :xi_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::BillingAddress::TaxIDType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class LineItem < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID::LineItem,
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

        class CreateInvoiceInputWithProductIDAndEmailAddress < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress,
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

          # The date by which the invoice must be paid.
          sig { returns(Time) }
          attr_accessor :due_date

          # The email address of the customer. Required when creating an invoice for a
          # customer who is not yet a member of the company.
          sig { returns(String) }
          attr_accessor :email_address

          # The plan attributes defining the price, currency, and billing interval for this
          # invoice.
          sig do
            returns(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::OrHash
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
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::OrHash
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

          # Optional line items that break down the invoice total. When provided, the sum of
          # (quantity \* unit_price) for all items must equal the plan price.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::LineItem
                ]
              )
            )
          end
          attr_accessor :line_items

          # The unique identifier of an existing mailing address to attach to this invoice.
          # Cannot be used together with billing_address.
          sig { returns(T.nilable(String)) }
          attr_accessor :mailing_address_id

          # The unique identifier of the payment method to charge. Required when
          # collection_method is charge_automatically.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_id

          # The payment token ID to use for this invoice. If using charge_automatically, you
          # must provide a payment_token.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_token_id

          # Autogenerated input type of CreateInvoice
          sig do
            params(
              collection_method: WhopSDK::CollectionMethod::OrSymbol,
              company_id: String,
              due_date: Time,
              email_address: String,
              plan:
                WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::OrHash,
              product_id: String,
              automatically_finalizes_at: T.nilable(Time),
              billing_address:
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::OrHash
                ),
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
              line_items:
                T.nilable(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::LineItem::OrHash
                  ]
                ),
              mailing_address_id: T.nilable(String),
              payment_method_id: T.nilable(String),
              payment_token_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # How the invoice should be collected. Use charge_automatically to charge a stored
            # payment method, or send_invoice to email the customer.
            collection_method:,
            # The unique identifier of the company to create this invoice for.
            company_id:,
            # The date by which the invoice must be paid.
            due_date:,
            # The email address of the customer. Required when creating an invoice for a
            # customer who is not yet a member of the company.
            email_address:,
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
            # Optional line items that break down the invoice total. When provided, the sum of
            # (quantity \* unit_price) for all items must equal the plan price.
            line_items: nil,
            # The unique identifier of an existing mailing address to attach to this invoice.
            # Cannot be used together with billing_address.
            mailing_address_id: nil,
            # The unique identifier of the payment method to charge. Required when
            # collection_method is charge_automatically.
            payment_method_id: nil,
            # The payment token ID to use for this invoice. If using charge_automatically, you
            # must provide a payment_token.
            payment_token_id: nil
          )
          end

          sig do
            override.returns(
              {
                collection_method: WhopSDK::CollectionMethod::OrSymbol,
                company_id: String,
                due_date: Time,
                email_address: String,
                plan:
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan,
                product_id: String,
                automatically_finalizes_at: T.nilable(Time),
                billing_address:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress
                  ),
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
                line_items:
                  T.nilable(
                    T::Array[
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::LineItem
                    ]
                  ),
                mailing_address_id: T.nilable(String),
                payment_method_id: T.nilable(String),
                payment_token_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::CustomField
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::PaymentMethodConfiguration::OrHash
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
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                legacy_payment_method_controls: T.nilable(T::Boolean),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::PaymentMethodConfiguration::OrHash
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
                        WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  legacy_payment_method_controls: T.nilable(T::Boolean),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::PaymentMethodConfiguration
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::CustomField,
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
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::Plan::PaymentMethodConfiguration,
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
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress,
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
            sig do
              returns(
                T.nilable(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                )
              )
            end
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
                tax_id_type:
                  T.nilable(
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                  ),
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
                  tax_id_type:
                    T.nilable(
                      WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::OrSymbol
                    ),
                  tax_id_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The type of tax identifier
            module TaxIDType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AD_NRT =
                T.let(
                  :ad_nrt,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AO_TIN =
                T.let(
                  :ao_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AR_CUIT =
                T.let(
                  :ar_cuit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AM_TIN =
                T.let(
                  :am_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AW_TIN =
                T.let(
                  :aw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ABN =
                T.let(
                  :au_abn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AU_ARN =
                T.let(
                  :au_arn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_VAT =
                T.let(
                  :eu_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AZ_TIN =
                T.let(
                  :az_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BS_TIN =
                T.let(
                  :bs_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BH_VAT =
                T.let(
                  :bh_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BD_BIN =
                T.let(
                  :bd_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BB_TIN =
                T.let(
                  :bb_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BY_TIN =
                T.let(
                  :by_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BJ_IFU =
                T.let(
                  :bj_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BO_TIN =
                T.let(
                  :bo_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BA_TIN =
                T.let(
                  :ba_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CNPJ =
                T.let(
                  :br_cnpj,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BR_CPF =
                T.let(
                  :br_cpf,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BG_UIC =
                T.let(
                  :bg_uic,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              BF_IFU =
                T.let(
                  :bf_ifu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KH_TIN =
                T.let(
                  :kh_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CM_NIU =
                T.let(
                  :cm_niu,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_BN =
                T.let(
                  :ca_bn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_GST_HST =
                T.let(
                  :ca_gst_hst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_BC =
                T.let(
                  :ca_pst_bc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_MB =
                T.let(
                  :ca_pst_mb,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_PST_SK =
                T.let(
                  :ca_pst_sk,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CA_QST =
                T.let(
                  :ca_qst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CV_NIF =
                T.let(
                  :cv_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CL_TIN =
                T.let(
                  :cl_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CN_TIN =
                T.let(
                  :cn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CO_NIT =
                T.let(
                  :co_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CD_NIF =
                T.let(
                  :cd_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CR_TIN =
                T.let(
                  :cr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HR_OIB =
                T.let(
                  :hr_oib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              DO_RCN =
                T.let(
                  :do_rcn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EC_RUC =
                T.let(
                  :ec_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EG_TIN =
                T.let(
                  :eg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SV_NIT =
                T.let(
                  :sv_nit,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ET_TIN =
                T.let(
                  :et_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              EU_OSS_VAT =
                T.let(
                  :eu_oss_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GE_VAT =
                T.let(
                  :ge_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              DE_STN =
                T.let(
                  :de_stn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GB_VAT =
                T.let(
                  :gb_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              GN_NIF =
                T.let(
                  :gn_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HK_BR =
                T.let(
                  :hk_br,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              HU_TIN =
                T.let(
                  :hu_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IS_VAT =
                T.let(
                  :is_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IN_GST =
                T.let(
                  :in_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ID_NPWP =
                T.let(
                  :id_npwp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              IL_VAT =
                T.let(
                  :il_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_CN =
                T.let(
                  :jp_cn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_RN =
                T.let(
                  :jp_rn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              JP_TRN =
                T.let(
                  :jp_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KZ_BIN =
                T.let(
                  :kz_bin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KE_PIN =
                T.let(
                  :ke_pin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KG_TIN =
                T.let(
                  :kg_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LA_TIN =
                T.let(
                  :la_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_UID =
                T.let(
                  :li_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              LI_VAT =
                T.let(
                  :li_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_FRP =
                T.let(
                  :my_frp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_ITN =
                T.let(
                  :my_itn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MY_SST =
                T.let(
                  :my_sst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MR_NIF =
                T.let(
                  :mr_nif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MX_RFC =
                T.let(
                  :mx_rfc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MD_VAT =
                T.let(
                  :md_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ME_PIB =
                T.let(
                  :me_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MA_VAT =
                T.let(
                  :ma_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NP_PAN =
                T.let(
                  :np_pan,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NZ_GST =
                T.let(
                  :nz_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NG_TIN =
                T.let(
                  :ng_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              MK_VAT =
                T.let(
                  :mk_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VAT =
                T.let(
                  :no_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              NO_VOEC =
                T.let(
                  :no_voec,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              OM_VAT =
                T.let(
                  :om_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PE_RUC =
                T.let(
                  :pe_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PH_TIN =
                T.let(
                  :ph_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              PL_NIP =
                T.let(
                  :pl_nip,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RO_TIN =
                T.let(
                  :ro_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_INN =
                T.let(
                  :ru_inn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RU_KPP =
                T.let(
                  :ru_kpp,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SA_VAT =
                T.let(
                  :sa_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SN_NINEA =
                T.let(
                  :sn_ninea,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              RS_PIB =
                T.let(
                  :rs_pib,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_GST =
                T.let(
                  :sg_gst,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SG_UEN =
                T.let(
                  :sg_uen,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SI_TIN =
                T.let(
                  :si_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZA_VAT =
                T.let(
                  :za_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              KR_BRN =
                T.let(
                  :kr_brn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ES_CIF =
                T.let(
                  :es_cif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_UID =
                T.let(
                  :ch_uid,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              CH_VAT =
                T.let(
                  :ch_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TW_VAT =
                T.let(
                  :tw_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TJ_TIN =
                T.let(
                  :tj_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TZ_VAT =
                T.let(
                  :tz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TH_VAT =
                T.let(
                  :th_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              TR_TIN =
                T.let(
                  :tr_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UG_TIN =
                T.let(
                  :ug_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UA_VAT =
                T.let(
                  :ua_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              AE_TRN =
                T.let(
                  :ae_trn,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              US_EIN =
                T.let(
                  :us_ein,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UY_RUC =
                T.let(
                  :uy_ruc,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_TIN =
                T.let(
                  :uz_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              UZ_VAT =
                T.let(
                  :uz_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              VE_RIF =
                T.let(
                  :ve_rif,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              VN_TIN =
                T.let(
                  :vn_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZM_TIN =
                T.let(
                  :zm_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              ZW_TIN =
                T.let(
                  :zw_tin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              SR_FIN =
                T.let(
                  :sr_fin,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )
              XI_VAT =
                T.let(
                  :xi_vat,
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::BillingAddress::TaxIDType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class LineItem < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress::LineItem,
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
