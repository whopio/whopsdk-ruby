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

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

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
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
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
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
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
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
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

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

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
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
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
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
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
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
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

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

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
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
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
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
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
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
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

          # Whether to charge the customer a buyer fee on this invoice.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :charge_buyer_fee

          # The name of the customer. Required when creating an invoice for a customer who
          # is not yet a member of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_name

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
              charge_buyer_fee: T.nilable(T::Boolean),
              customer_name: T.nilable(String),
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
            # Whether to charge the customer a buyer fee on this invoice.
            charge_buyer_fee: nil,
            # The name of the customer. Required when creating an invoice for a customer who
            # is not yet a member of the company.
            customer_name: nil,
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
                charge_buyer_fee: T.nilable(T::Boolean),
                customer_name: T.nilable(String),
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
