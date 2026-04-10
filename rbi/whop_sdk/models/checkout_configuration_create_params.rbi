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

      # Parameters for CreateCheckoutSession
      sig do
        returns(
          T.any(
            WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan,
            WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID,
            WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::OrHash,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::OrHash,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Parameters for CreateCheckoutSession
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan,
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID,
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Parameters for CreateCheckoutSession
      module Body
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID,
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup
            )
          end

        class CreateCheckoutSessionInputModePaymentWithPlan < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan,
                WhopSDK::Internal::AnyHash
              )
            end

          # The plan attributes to create a new plan inline for this checkout configuration.
          sig do
            returns(
              WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan
            )
          end
          attr_reader :plan

          sig do
            params(
              plan:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::OrHash
            ).void
          end
          attr_writer :plan

          # An affiliate tracking code to attribute the checkout to a specific affiliate.
          sig { returns(T.nilable(String)) }
          attr_accessor :affiliate_code

          # Checkout styling overrides for this session. Overrides plan and company
          # defaults.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::CheckoutStyling
              )
            )
          end
          attr_reader :checkout_styling

          sig do
            params(
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::CheckoutStyling::OrHash
                )
            ).void
          end
          attr_writer :checkout_styling

          # The available currencies on the platform
          sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
          attr_accessor :currency

          # Custom key-value metadata to attach to the checkout configuration.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::OrSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # The explicit payment method configuration for the checkout session. Only applies
          # to setup mode. If not provided, the platform or company defaults will apply.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::PaymentMethodConfiguration
              )
            )
          end
          attr_reader :payment_method_configuration

          sig do
            params(
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::PaymentMethodConfiguration::OrHash
                )
            ).void
          end
          attr_writer :payment_method_configuration

          # The URL to redirect the user to after checkout is completed.
          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_url

          # The URL of the page where the checkout is being initiated from.
          sig { returns(T.nilable(String)) }
          attr_accessor :source_url

          # Autogenerated input type of CreateCheckoutSession
          sig do
            params(
              plan:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::OrHash,
              affiliate_code: T.nilable(String),
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::CheckoutStyling::OrHash
                ),
              currency: T.nilable(WhopSDK::Currency::OrSymbol),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              mode:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::OrSymbol,
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::PaymentMethodConfiguration::OrHash
                ),
              redirect_url: T.nilable(String),
              source_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The plan attributes to create a new plan inline for this checkout configuration.
            plan:,
            # An affiliate tracking code to attribute the checkout to a specific affiliate.
            affiliate_code: nil,
            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            checkout_styling: nil,
            # The available currencies on the platform
            currency: nil,
            # Custom key-value metadata to attach to the checkout configuration.
            metadata: nil,
            mode: nil,
            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
            payment_method_configuration: nil,
            # The URL to redirect the user to after checkout is completed.
            redirect_url: nil,
            # The URL of the page where the checkout is being initiated from.
            source_url: nil
          )
          end

          sig do
            override.returns(
              {
                plan:
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan,
                affiliate_code: T.nilable(String),
                checkout_styling:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::CheckoutStyling
                  ),
                currency: T.nilable(WhopSDK::Currency::OrSymbol),
                metadata: T.nilable(T::Hash[Symbol, T.anything]),
                mode:
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::OrSymbol,
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::PaymentMethodConfiguration
                  ),
                redirect_url: T.nilable(String),
                source_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Plan < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The company the plan should be created for.
            sig { returns(String) }
            attr_accessor :company_id

            # The respective currency identifier for the plan.
            sig { returns(WhopSDK::Currency::OrSymbol) }
            attr_accessor :currency

            # The application fee amount collected by the platform from this connected
            # account. Provided as a number in dollars (e.g., 5.00 for $5.00). Must be less
            # than the total payment amount. Only valid for connected accounts with a parent
            # company.
            sig { returns(T.nilable(Float)) }
            attr_accessor :application_fee_amount

            # The interval in days at which the plan charges (renewal plans). For example, 30
            # for monthly billing.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :billing_period

            # An array of custom field objects.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::CustomField
                  ]
                )
              )
            end
            attr_accessor :custom_fields

            # The description of the plan.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The number of days until the membership expires (for expiration-based plans).
            # For example, 365 for a one-year access pass.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :expiration_days

            # Whether to force the creation of a new plan even if one with the same attributes
            # already exists.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :force_create_new_plan

            # An image for the plan. This will be visible on the product page to customers.
            sig do
              returns(
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Image
                )
              )
            end
            attr_reader :image

            sig do
              params(
                image:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Image::OrHash
                  )
              ).void
            end
            attr_writer :image

            # An additional amount charged upon first purchase. Provided as a number in
            # dollars (e.g., 10.00 for $10.00).
            sig { returns(T.nilable(Float)) }
            attr_accessor :initial_price

            # A personal description or notes section for the business.
            sig { returns(T.nilable(String)) }
            attr_accessor :internal_notes

            # Whether or not the tax is included in a plan's price (or if it hasn't been set
            # up)
            sig { returns(T.nilable(WhopSDK::TaxType::OrSymbol)) }
            attr_accessor :override_tax_type

            # The explicit payment method configuration for the plan. If not provided, the
            # platform or company's defaults will apply.
            sig do
              returns(
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::PaymentMethodConfiguration
                )
              )
            end
            attr_reader :payment_method_configuration

            sig do
              params(
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::PaymentMethodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :payment_method_configuration

            # The type of plan that can be attached to a product
            sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
            attr_accessor :plan_type

            # Pass this object to create a new product for this plan. We will use the product
            # external identifier to find or create an existing product.
            sig do
              returns(
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Product
                )
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Product::OrHash
                  )
              ).void
            end
            attr_writer :product

            # The product the plan is related to. Either this or product is required.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_id

            # The methods of how a plan can be released.
            sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
            attr_accessor :release_method

            # The amount the customer is charged every billing period. Provided as a number in
            # dollars (e.g., 9.99 for $9.99/period).
            sig { returns(T.nilable(Float)) }
            attr_accessor :renewal_price

            # The number of payments required before pausing the subscription.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :split_pay_required_payments

            # The number of units available for purchase. If not provided, stock is unlimited.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :stock

            # The title of the plan. This will be visible on the product page to customers.
            sig { returns(T.nilable(String)) }
            attr_accessor :title

            # The number of free trial days added before a renewal plan.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :trial_period_days

            # Visibility of a resource
            sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
            attr_accessor :visibility

            # The plan attributes to create a new plan inline for this checkout configuration.
            sig do
              params(
                company_id: String,
                currency: WhopSDK::Currency::OrSymbol,
                application_fee_amount: T.nilable(Float),
                billing_period: T.nilable(Integer),
                custom_fields:
                  T.nilable(
                    T::Array[
                      WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::CustomField::OrHash
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                force_create_new_plan: T.nilable(T::Boolean),
                image:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Image::OrHash
                  ),
                initial_price: T.nilable(Float),
                internal_notes: T.nilable(String),
                override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::PaymentMethodConfiguration::OrHash
                  ),
                plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
                product:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Product::OrHash
                  ),
                product_id: T.nilable(String),
                release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
                renewal_price: T.nilable(Float),
                split_pay_required_payments: T.nilable(Integer),
                stock: T.nilable(Integer),
                title: T.nilable(String),
                trial_period_days: T.nilable(Integer),
                visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
              ).returns(T.attached_class)
            end
            def self.new(
              # The company the plan should be created for.
              company_id:,
              # The respective currency identifier for the plan.
              currency:,
              # The application fee amount collected by the platform from this connected
              # account. Provided as a number in dollars (e.g., 5.00 for $5.00). Must be less
              # than the total payment amount. Only valid for connected accounts with a parent
              # company.
              application_fee_amount: nil,
              # The interval in days at which the plan charges (renewal plans). For example, 30
              # for monthly billing.
              billing_period: nil,
              # An array of custom field objects.
              custom_fields: nil,
              # The description of the plan.
              description: nil,
              # The number of days until the membership expires (for expiration-based plans).
              # For example, 365 for a one-year access pass.
              expiration_days: nil,
              # Whether to force the creation of a new plan even if one with the same attributes
              # already exists.
              force_create_new_plan: nil,
              # An image for the plan. This will be visible on the product page to customers.
              image: nil,
              # An additional amount charged upon first purchase. Provided as a number in
              # dollars (e.g., 10.00 for $10.00).
              initial_price: nil,
              # A personal description or notes section for the business.
              internal_notes: nil,
              # Whether or not the tax is included in a plan's price (or if it hasn't been set
              # up)
              override_tax_type: nil,
              # The explicit payment method configuration for the plan. If not provided, the
              # platform or company's defaults will apply.
              payment_method_configuration: nil,
              # The type of plan that can be attached to a product
              plan_type: nil,
              # Pass this object to create a new product for this plan. We will use the product
              # external identifier to find or create an existing product.
              product: nil,
              # The product the plan is related to. Either this or product is required.
              product_id: nil,
              # The methods of how a plan can be released.
              release_method: nil,
              # The amount the customer is charged every billing period. Provided as a number in
              # dollars (e.g., 9.99 for $9.99/period).
              renewal_price: nil,
              # The number of payments required before pausing the subscription.
              split_pay_required_payments: nil,
              # The number of units available for purchase. If not provided, stock is unlimited.
              stock: nil,
              # The title of the plan. This will be visible on the product page to customers.
              title: nil,
              # The number of free trial days added before a renewal plan.
              trial_period_days: nil,
              # Visibility of a resource
              visibility: nil
            )
            end

            sig do
              override.returns(
                {
                  company_id: String,
                  currency: WhopSDK::Currency::OrSymbol,
                  application_fee_amount: T.nilable(Float),
                  billing_period: T.nilable(Integer),
                  custom_fields:
                    T.nilable(
                      T::Array[
                        WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::CustomField
                      ]
                    ),
                  description: T.nilable(String),
                  expiration_days: T.nilable(Integer),
                  force_create_new_plan: T.nilable(T::Boolean),
                  image:
                    T.nilable(
                      WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Image
                    ),
                  initial_price: T.nilable(Float),
                  internal_notes: T.nilable(String),
                  override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
                  payment_method_configuration:
                    T.nilable(
                      WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::PaymentMethodConfiguration
                    ),
                  plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
                  product:
                    T.nilable(
                      WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Product
                    ),
                  product_id: T.nilable(String),
                  release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
                  renewal_price: T.nilable(Float),
                  split_pay_required_payments: T.nilable(Integer),
                  stock: T.nilable(Integer),
                  title: T.nilable(String),
                  trial_period_days: T.nilable(Integer),
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
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::CustomField,
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
                  T.any(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Image,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The ID of an existing file object.
              sig { returns(String) }
              attr_accessor :id

              # An image for the plan. This will be visible on the product page to customers.
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
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::PaymentMethodConfiguration,
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

            class Product < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Plan::Product,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # A unique ID used to find or create a product. When provided during creation, we
              # will look for an existing product with this external identifier — if found, it
              # will be updated; otherwise, a new product will be created.
              sig { returns(String) }
              attr_accessor :external_identifier

              # The title of the product.
              sig { returns(String) }
              attr_accessor :title

              # Whether or not to collect shipping information at checkout from the customer.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :collect_shipping_address

              # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
              # between 5 and 22 characters, contain at least one letter, and not contain any of
              # the following characters: <, >, \, ', "
              sig { returns(T.nilable(String)) }
              attr_accessor :custom_statement_descriptor

              # A written description of the product.
              sig { returns(T.nilable(String)) }
              attr_accessor :description

              # The percentage of the revenue that goes to the global affiliate program.
              sig { returns(T.nilable(Float)) }
              attr_accessor :global_affiliate_percentage

              # The different statuses of the global affiliate program for a product.
              sig do
                returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol))
              end
              attr_accessor :global_affiliate_status

              # The headline of the product.
              sig { returns(T.nilable(String)) }
              attr_accessor :headline

              # The ID of the product tax code to apply to this product.
              sig { returns(T.nilable(String)) }
              attr_accessor :product_tax_code_id

              # The URL to redirect the customer to after a purchase.
              sig { returns(T.nilable(String)) }
              attr_accessor :redirect_purchase_url

              # The route of the product.
              sig { returns(T.nilable(String)) }
              attr_accessor :route

              # Visibility of a resource
              sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
              attr_accessor :visibility

              # Pass this object to create a new product for this plan. We will use the product
              # external identifier to find or create an existing product.
              sig do
                params(
                  external_identifier: String,
                  title: String,
                  collect_shipping_address: T.nilable(T::Boolean),
                  custom_statement_descriptor: T.nilable(String),
                  description: T.nilable(String),
                  global_affiliate_percentage: T.nilable(Float),
                  global_affiliate_status:
                    T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
                  headline: T.nilable(String),
                  product_tax_code_id: T.nilable(String),
                  redirect_purchase_url: T.nilable(String),
                  route: T.nilable(String),
                  visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
                ).returns(T.attached_class)
              end
              def self.new(
                # A unique ID used to find or create a product. When provided during creation, we
                # will look for an existing product with this external identifier — if found, it
                # will be updated; otherwise, a new product will be created.
                external_identifier:,
                # The title of the product.
                title:,
                # Whether or not to collect shipping information at checkout from the customer.
                collect_shipping_address: nil,
                # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
                # between 5 and 22 characters, contain at least one letter, and not contain any of
                # the following characters: <, >, \, ', "
                custom_statement_descriptor: nil,
                # A written description of the product.
                description: nil,
                # The percentage of the revenue that goes to the global affiliate program.
                global_affiliate_percentage: nil,
                # The different statuses of the global affiliate program for a product.
                global_affiliate_status: nil,
                # The headline of the product.
                headline: nil,
                # The ID of the product tax code to apply to this product.
                product_tax_code_id: nil,
                # The URL to redirect the customer to after a purchase.
                redirect_purchase_url: nil,
                # The route of the product.
                route: nil,
                # Visibility of a resource
                visibility: nil
              )
              end

              sig do
                override.returns(
                  {
                    external_identifier: String,
                    title: String,
                    collect_shipping_address: T.nilable(T::Boolean),
                    custom_statement_descriptor: T.nilable(String),
                    description: T.nilable(String),
                    global_affiliate_percentage: T.nilable(Float),
                    global_affiliate_status:
                      T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
                    headline: T.nilable(String),
                    product_tax_code_id: T.nilable(String),
                    redirect_purchase_url: T.nilable(String),
                    route: T.nilable(String),
                    visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class CheckoutStyling < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::CheckoutStyling,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The different border-radius styles available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutShape::OrSymbol)) }
            attr_accessor :border_style

            # A hex color code for the button color (e.g. #FF5733).
            sig { returns(T.nilable(String)) }
            attr_accessor :button_color

            # The different font families available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutFont::OrSymbol)) }
            attr_accessor :font_family

            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            sig do
              params(
                border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                button_color: T.nilable(String),
                font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
              ).returns(T.attached_class)
            end
            def self.new(
              # The different border-radius styles available for checkout pages.
              border_style: nil,
              # A hex color code for the button color (e.g. #FF5733).
              button_color: nil,
              # The different font families available for checkout pages.
              font_family: nil
            )
            end

            sig do
              override.returns(
                {
                  border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                  button_color: T.nilable(String),
                  font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
                }
              )
            end
            def to_hash
            end
          end

          module Mode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT =
              T.let(
                :payment,
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::Mode::TaggedSymbol
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
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlan::PaymentMethodConfiguration,
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

            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
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

        class CreateCheckoutSessionInputModePaymentWithPlanID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier of an existing plan to use for this checkout
          # configuration.
          sig { returns(String) }
          attr_accessor :plan_id

          # An affiliate tracking code to attribute the checkout to a specific affiliate.
          sig { returns(T.nilable(String)) }
          attr_accessor :affiliate_code

          # Checkout styling overrides for this session. Overrides plan and company
          # defaults.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::CheckoutStyling
              )
            )
          end
          attr_reader :checkout_styling

          sig do
            params(
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::CheckoutStyling::OrHash
                )
            ).void
          end
          attr_writer :checkout_styling

          # The available currencies on the platform
          sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
          attr_accessor :currency

          # Custom key-value metadata to attach to the checkout configuration.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::OrSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # The explicit payment method configuration for the checkout session. Only applies
          # to setup mode. If not provided, the platform or company defaults will apply.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::PaymentMethodConfiguration
              )
            )
          end
          attr_reader :payment_method_configuration

          sig do
            params(
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::PaymentMethodConfiguration::OrHash
                )
            ).void
          end
          attr_writer :payment_method_configuration

          # The URL to redirect the user to after checkout is completed.
          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_url

          # The URL of the page where the checkout is being initiated from.
          sig { returns(T.nilable(String)) }
          attr_accessor :source_url

          # Autogenerated input type of CreateCheckoutSession
          sig do
            params(
              plan_id: String,
              affiliate_code: T.nilable(String),
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::CheckoutStyling::OrHash
                ),
              currency: T.nilable(WhopSDK::Currency::OrSymbol),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              mode:
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::OrSymbol,
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::PaymentMethodConfiguration::OrHash
                ),
              redirect_url: T.nilable(String),
              source_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier of an existing plan to use for this checkout
            # configuration.
            plan_id:,
            # An affiliate tracking code to attribute the checkout to a specific affiliate.
            affiliate_code: nil,
            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            checkout_styling: nil,
            # The available currencies on the platform
            currency: nil,
            # Custom key-value metadata to attach to the checkout configuration.
            metadata: nil,
            mode: nil,
            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
            payment_method_configuration: nil,
            # The URL to redirect the user to after checkout is completed.
            redirect_url: nil,
            # The URL of the page where the checkout is being initiated from.
            source_url: nil
          )
          end

          sig do
            override.returns(
              {
                plan_id: String,
                affiliate_code: T.nilable(String),
                checkout_styling:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::CheckoutStyling
                  ),
                currency: T.nilable(WhopSDK::Currency::OrSymbol),
                metadata: T.nilable(T::Hash[Symbol, T.anything]),
                mode:
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::OrSymbol,
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::PaymentMethodConfiguration
                  ),
                redirect_url: T.nilable(String),
                source_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class CheckoutStyling < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::CheckoutStyling,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The different border-radius styles available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutShape::OrSymbol)) }
            attr_accessor :border_style

            # A hex color code for the button color (e.g. #FF5733).
            sig { returns(T.nilable(String)) }
            attr_accessor :button_color

            # The different font families available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutFont::OrSymbol)) }
            attr_accessor :font_family

            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            sig do
              params(
                border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                button_color: T.nilable(String),
                font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
              ).returns(T.attached_class)
            end
            def self.new(
              # The different border-radius styles available for checkout pages.
              border_style: nil,
              # A hex color code for the button color (e.g. #FF5733).
              button_color: nil,
              # The different font families available for checkout pages.
              font_family: nil
            )
            end

            sig do
              override.returns(
                {
                  border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                  button_color: T.nilable(String),
                  font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
                }
              )
            end
            def to_hash
            end
          end

          module Mode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT =
              T.let(
                :payment,
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::Mode::TaggedSymbol
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
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModePaymentWithPlanID::PaymentMethodConfiguration,
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

            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
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

        class CreateCheckoutSessionInputModeSetup < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier of the company to create the checkout configuration for.
          # Only required in setup mode.
          sig { returns(String) }
          attr_accessor :company_id

          sig { returns(Symbol) }
          attr_accessor :mode

          # Checkout styling overrides for this session. Overrides plan and company
          # defaults.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::CheckoutStyling
              )
            )
          end
          attr_reader :checkout_styling

          sig do
            params(
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::CheckoutStyling::OrHash
                )
            ).void
          end
          attr_writer :checkout_styling

          # The available currencies on the platform
          sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
          attr_accessor :currency

          # Custom key-value metadata to attach to the checkout configuration.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          # The explicit payment method configuration for the checkout session. Only applies
          # to setup mode. If not provided, the platform or company defaults will apply.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::PaymentMethodConfiguration
              )
            )
          end
          attr_reader :payment_method_configuration

          sig do
            params(
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::PaymentMethodConfiguration::OrHash
                )
            ).void
          end
          attr_writer :payment_method_configuration

          # The URL to redirect the user to after checkout is completed.
          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_url

          # The URL of the page where the checkout is being initiated from.
          sig { returns(T.nilable(String)) }
          attr_accessor :source_url

          # Autogenerated input type of CreateCheckoutSession
          sig do
            params(
              company_id: String,
              checkout_styling:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::CheckoutStyling::OrHash
                ),
              currency: T.nilable(WhopSDK::Currency::OrSymbol),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::PaymentMethodConfiguration::OrHash
                ),
              redirect_url: T.nilable(String),
              source_url: T.nilable(String),
              mode: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier of the company to create the checkout configuration for.
            # Only required in setup mode.
            company_id:,
            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            checkout_styling: nil,
            # The available currencies on the platform
            currency: nil,
            # Custom key-value metadata to attach to the checkout configuration.
            metadata: nil,
            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
            payment_method_configuration: nil,
            # The URL to redirect the user to after checkout is completed.
            redirect_url: nil,
            # The URL of the page where the checkout is being initiated from.
            source_url: nil,
            mode: :setup
          )
          end

          sig do
            override.returns(
              {
                company_id: String,
                mode: Symbol,
                checkout_styling:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::CheckoutStyling
                  ),
                currency: T.nilable(WhopSDK::Currency::OrSymbol),
                metadata: T.nilable(T::Hash[Symbol, T.anything]),
                payment_method_configuration:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::PaymentMethodConfiguration
                  ),
                redirect_url: T.nilable(String),
                source_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class CheckoutStyling < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::CheckoutStyling,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The different border-radius styles available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutShape::OrSymbol)) }
            attr_accessor :border_style

            # A hex color code for the button color (e.g. #FF5733).
            sig { returns(T.nilable(String)) }
            attr_accessor :button_color

            # The different font families available for checkout pages.
            sig { returns(T.nilable(WhopSDK::CheckoutFont::OrSymbol)) }
            attr_accessor :font_family

            # Checkout styling overrides for this session. Overrides plan and company
            # defaults.
            sig do
              params(
                border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                button_color: T.nilable(String),
                font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
              ).returns(T.attached_class)
            end
            def self.new(
              # The different border-radius styles available for checkout pages.
              border_style: nil,
              # A hex color code for the button color (e.g. #FF5733).
              button_color: nil,
              # The different font families available for checkout pages.
              font_family: nil
            )
            end

            sig do
              override.returns(
                {
                  border_style: T.nilable(WhopSDK::CheckoutShape::OrSymbol),
                  button_color: T.nilable(String),
                  font_family: T.nilable(WhopSDK::CheckoutFont::OrSymbol)
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
                  WhopSDK::CheckoutConfigurationCreateParams::Body::CreateCheckoutSessionInputModeSetup::PaymentMethodConfiguration,
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

            # The explicit payment method configuration for the checkout session. Only applies
            # to setup mode. If not provided, the platform or company defaults will apply.
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

        sig do
          override.returns(
            T::Array[WhopSDK::CheckoutConfigurationCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
