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

      # Pass this object to create a new plan for this checkout configuration
      sig { returns(WhopSDK::CheckoutConfigurationCreateParams::Plan) }
      attr_reader :plan

      sig do
        params(
          plan: WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash
        ).void
      end
      attr_writer :plan

      # The affiliate code to use for the checkout configuration
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # The metadata to use for the checkout configuration
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig { returns(Symbol) }
      attr_accessor :mode

      # This currently only works for configurations made in 'setup' mode. The explicit
      # payment method configuration for the checkout session. If not provided, the
      # platform or company's defaults will apply.
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

      # The URL to redirect the user to after the checkout configuration is created
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # The URL of the page where the checkout is being initiated from.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_url

      # The ID of the plan to use for the checkout configuration
      sig { returns(String) }
      attr_accessor :plan_id

      # The ID of the company for which to generate the checkout configuration. Only
      # required in setup mode.
      sig { returns(String) }
      attr_accessor :company_id

      sig do
        params(
          plan: WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash,
          plan_id: String,
          company_id: String,
          affiliate_code: T.nilable(String),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration::OrHash
            ),
          redirect_url: T.nilable(String),
          source_url: T.nilable(String),
          mode: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Pass this object to create a new plan for this checkout configuration
        plan:,
        # The ID of the plan to use for the checkout configuration
        plan_id:,
        # The ID of the company for which to generate the checkout configuration. Only
        # required in setup mode.
        company_id:,
        # The affiliate code to use for the checkout configuration
        affiliate_code: nil,
        # The available currencies on the platform
        currency: nil,
        # The metadata to use for the checkout configuration
        metadata: nil,
        # This currently only works for configurations made in 'setup' mode. The explicit
        # payment method configuration for the checkout session. If not provided, the
        # platform or company's defaults will apply.
        payment_method_configuration: nil,
        # The URL to redirect the user to after the checkout configuration is created
        redirect_url: nil,
        # The URL of the page where the checkout is being initiated from.
        source_url: nil,
        mode: :setup,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            plan: WhopSDK::CheckoutConfigurationCreateParams::Plan,
            affiliate_code: T.nilable(String),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            mode: Symbol,
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration
              ),
            redirect_url: T.nilable(String),
            source_url: T.nilable(String),
            plan_id: String,
            company_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::Plan,
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
        # account. Must be less than the total payment amount. Only valid for connected
        # accounts with a parent company.
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_amount

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField
              ]
            )
          )
        end
        attr_accessor :custom_fields

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Whether to force the creation of a new plan even if one with the same attributes
        # already exists.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :force_create_new_plan

        # An image for the plan. This will be visible on the product page to customers.
        sig do
          returns(
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::Image)
          )
        end
        attr_reader :image

        sig do
          params(
            image:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image::OrHash
              )
          ).void
        end
        attr_writer :image

        # An additional amount charged upon first purchase.
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

        # The type of plan that can be attached to a product
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # Pass this object to create a new product for this plan. We will use the product
        # external identifier to find or create an existing product.
        sig do
          returns(
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::Product)
          )
        end
        attr_reader :product

        sig do
          params(
            product:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::OrHash
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

        # The amount the customer is charged every billing period.
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

        # Pass this object to create a new plan for this checkout configuration
        sig do
          params(
            company_id: String,
            currency: WhopSDK::Currency::OrSymbol,
            application_fee_amount: T.nilable(Float),
            billing_period: T.nilable(Integer),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            force_create_new_plan: T.nilable(T::Boolean),
            image:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image::OrHash
              ),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
            payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration::OrHash
              ),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            product:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::OrHash
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
          # account. Must be less than the total payment amount. Only valid for connected
          # accounts with a parent company.
          application_fee_amount: nil,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # The description of the plan.
          description: nil,
          # The interval at which the plan charges (expiration plans).
          expiration_days: nil,
          # Whether to force the creation of a new plan even if one with the same attributes
          # already exists.
          force_create_new_plan: nil,
          # An image for the plan. This will be visible on the product page to customers.
          image: nil,
          # An additional amount charged upon first purchase.
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
          # The amount the customer is charged every billing period.
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
                    WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField
                  ]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              force_create_new_plan: T.nilable(T::Boolean),
              image:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Image
                ),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
              payment_method_configuration:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration
                ),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              product:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Product
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField,
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image,
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration,
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product,
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

          # The different business types a company can be.
          sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
          attr_accessor :business_type

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
          sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
          attr_accessor :global_affiliate_status

          # The headline of the product.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # The different industry types a company can be in.
          sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
          attr_accessor :industry_type

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
              business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
              collect_shipping_address: T.nilable(T::Boolean),
              custom_statement_descriptor: T.nilable(String),
              description: T.nilable(String),
              global_affiliate_percentage: T.nilable(Float),
              global_affiliate_status:
                T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
              headline: T.nilable(String),
              industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
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
            # The different business types a company can be.
            business_type: nil,
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
            # The different industry types a company can be in.
            industry_type: nil,
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
                business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
                collect_shipping_address: T.nilable(T::Boolean),
                custom_statement_descriptor: T.nilable(String),
                description: T.nilable(String),
                global_affiliate_percentage: T.nilable(Float),
                global_affiliate_status:
                  T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
                headline: T.nilable(String),
                industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
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

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration,
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

        # This currently only works for configurations made in 'setup' mode. The explicit
        # payment method configuration for the checkout session. If not provided, the
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
