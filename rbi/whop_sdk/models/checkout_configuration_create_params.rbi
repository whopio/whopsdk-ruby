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

      # The plan attributes to create a new plan inline for this checkout configuration.
      sig { returns(WhopSDK::CheckoutConfigurationCreateParams::Plan) }
      attr_reader :plan

      sig do
        params(
          plan: WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash
        ).void
      end
      attr_writer :plan

      # An affiliate tracking code to attribute the checkout to a specific affiliate.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # Custom key-value metadata to attach to the checkout configuration.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig { returns(Symbol) }
      attr_accessor :mode

      # The explicit payment method configuration for the checkout session. Only applies
      # to setup mode. If not provided, the platform or company defaults will apply.
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

      # The URL to redirect the user to after checkout is completed.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # The URL of the page where the checkout is being initiated from.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_url

      # The unique identifier of an existing plan to use for this checkout
      # configuration.
      sig { returns(String) }
      attr_accessor :plan_id

      # The unique identifier of the company to create the checkout configuration for.
      # Only required in setup mode.
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
        # The plan attributes to create a new plan inline for this checkout configuration.
        plan:,
        # The unique identifier of an existing plan to use for this checkout
        # configuration.
        plan_id:,
        # The unique identifier of the company to create the checkout configuration for.
        # Only required in setup mode.
        company_id:,
        # An affiliate tracking code to attribute the checkout to a specific affiliate.
        affiliate_code: nil,
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField
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

          # The different industry groups a company can be in.
          sig do
            returns(
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::OrSymbol
              )
            )
          end
          attr_accessor :industry_group

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
              industry_group:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::OrSymbol
                ),
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
            # The different industry groups a company can be in.
            industry_group: nil,
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
                industry_group:
                  T.nilable(
                    WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::OrSymbol
                  ),
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

          # The different industry groups a company can be in.
          module IndustryGroup
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACADEMIC_AND_TEST_PREP =
              T.let(
                :academic_and_test_prep,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            ACCESSORIES =
              T.let(
                :accessories,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            AI_AND_AUTOMATION_AGENCIES =
              T.let(
                :ai_and_automation_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            AI_AND_AUTOMATION_SOFTWARE =
              T.let(
                :ai_and_automation_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            ARTS_AND_CRAFTS =
              T.let(
                :arts_and_crafts,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            AUTOMOTIVE =
              T.let(
                :automotive,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            B2B_AND_PROFESSIONAL_MARKETPLACES =
              T.let(
                :b2b_and_professional_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            BABY_AND_KIDS =
              T.let(
                :baby_and_kids,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            BEAUTY_AND_PERSONAL_CARE =
              T.let(
                :beauty_and_personal_care,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            BEAUTY_AND_WELLNESS =
              T.let(
                :beauty_and_wellness,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            BUSINESS_AND_ENTREPRENEURSHIP =
              T.let(
                :business_and_entrepreneurship,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            BUSINESS_AND_MONEY_GROUPS =
              T.let(
                :business_and_money_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CAREER_AND_PROFESSIONAL =
              T.let(
                :career_and_professional,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CHARITY_AND_CAUSE_EVENTS =
              T.let(
                :charity_and_cause_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CLOTHING_AND_APPAREL =
              T.let(
                :clothing_and_apparel,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            COMMUNICATION_AND_MESSAGING_SOFTWARE =
              T.let(
                :communication_and_messaging_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            COMMUNITY_AND_EDUCATION_SOFTWARE =
              T.let(
                :community_and_education_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CONSULTING =
              T.let(
                :consulting,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CONTENT_AND_CLIPPING_AGENCIES =
              T.let(
                :content_and_clipping_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CREATIVE_AND_CONTENT_CREATION =
              T.let(
                :creative_and_content_creation,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CREATIVE_AND_CONTENT_GROUPS =
              T.let(
                :creative_and_content_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CREATIVE_AND_EDUCATION =
              T.let(
                :creative_and_education,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CREATIVE_GIGS =
              T.let(
                :creative_gigs,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CREATIVE_SERVICES =
              T.let(
                :creative_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            CUSTOMER_SUPPORT_AGENCIES =
              T.let(
                :customer_support_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DATING_AND_RELATIONSHIPS =
              T.let(
                :dating_and_relationships,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DELIVERY_AND_LOGISTICS =
              T.let(
                :delivery_and_logistics,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DENTAL_AND_VISION =
              T.let(
                :dental_and_vision,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DERMATOLOGY_AND_SKIN =
              T.let(
                :dermatology_and_skin,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DESIGN_AND_CREATIVE_AGENCIES =
              T.let(
                :design_and_creative_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DEVELOPER_AND_TECHNICAL_TOOLS =
              T.let(
                :developer_and_technical_tools,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DEVELOPMENT_AGENCIES =
              T.let(
                :development_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            DIGITAL_AND_EDUCATION_MARKETPLACES =
              T.let(
                :digital_and_education_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            E_COMMERCE_SOFTWARE =
              T.let(
                :e_commerce_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            EDUCATION_AND_BUSINESS_EVENTS =
              T.let(
                :education_and_business_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            EDUCATION_AND_CHILDCARE =
              T.let(
                :education_and_childcare,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            ELECTRONICS_AND_GADGETS =
              T.let(
                :electronics_and_gadgets,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            ENTERTAINMENT_AND_LEISURE =
              T.let(
                :entertainment_and_leisure,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            ENTERTAINMENT_EVENTS =
              T.let(
                :entertainment_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FAMILY_AND_COMMUNITY_EVENTS =
              T.let(
                :family_and_community_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FINANCE_AND_INVESTING =
              T.let(
                :finance_and_investing,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FITNESS_AND_ATHLETICS =
              T.let(
                :fitness_and_athletics,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FITNESS_AND_HEALTH_GROUPS =
              T.let(
                :fitness_and_health_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FITNESS_AND_RECREATION =
              T.let(
                :fitness_and_recreation,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FITNESS_EQUIPMENT_AND_GEAR =
              T.let(
                :fitness_equipment_and_gear,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FOOD_AND_BEVERAGE =
              T.let(
                :food_and_beverage,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FOOD_AND_BEVERAGES =
              T.let(
                :food_and_beverages,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            FOOD_AND_HOSPITALITY_MARKETPLACES =
              T.let(
                :food_and_hospitality_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            GAMING_AND_ENTERTAINMENT_SOFTWARE =
              T.let(
                :gaming_and_entertainment_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            GAMING_GROUPS =
              T.let(
                :gaming_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            GENETIC_AND_SPECIALIZED =
              T.let(
                :genetic_and_specialized,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            GOVERNMENT_AND_PUBLIC =
              T.let(
                :government_and_public,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HEALTH_AND_WELLNESS =
              T.let(
                :health_and_wellness,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HEALTH_AND_WELLNESS_SERVICES =
              T.let(
                :health_and_wellness_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HEALTHCARE =
              T.let(
                :healthcare,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HEALTHCARE_AND_WELLNESS_SOFTWARE =
              T.let(
                :healthcare_and_wellness_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOBBIES_AND_LIFESTYLE =
              T.let(
                :hobbies_and_lifestyle,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOBBY_AND_INTEREST_GROUPS =
              T.let(
                :hobby_and_interest_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOME_AND_LIVING =
              T.let(
                :home_and_living,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOME_AND_TRADE_SERVICES =
              T.let(
                :home_and_trade_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOME_AND_TRADE_STOREFRONTS =
              T.let(
                :home_and_trade_storefronts,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOME_SERVICES_GIGS =
              T.let(
                :home_services_gigs,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            HOSPITALITY_AND_LODGING =
              T.let(
                :hospitality_and_lodging,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            INDUSTRY_SPECIFIC_SOFTWARE =
              T.let(
                :industry_specific_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LANGUAGE_AND_COMMUNICATION =
              T.let(
                :language_and_communication,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LEGAL_AND_COMPLIANCE =
              T.let(
                :legal_and_compliance,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LIFESTYLE_AND_CULTURE =
              T.let(
                :lifestyle_and_culture,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LIFESTYLE_AND_PERSONAL_GROWTH_GROUPS =
              T.let(
                :lifestyle_and_personal_growth_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LIFESTYLE_AND_WELLNESS_EVENTS =
              T.let(
                :lifestyle_and_wellness_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            LOGISTICS_AND_TRANSPORTATION_SERVICES =
              T.let(
                :logistics_and_transportation_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MARKETING_AGENCIES =
              T.let(
                :marketing_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MARKETING_AND_ADVERTISING =
              T.let(
                :marketing_and_advertising,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MARKETING_AND_SALES_SOFTWARE =
              T.let(
                :marketing_and_sales_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MENTAL_HEALTH_AND_BEHAVIORAL =
              T.let(
                :mental_health_and_behavioral,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MISCELLANEOUS =
              T.let(
                :miscellaneous,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            MUSIC_AND_PERFORMING_ARTS =
              T.let(
                :music_and_performing_arts,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            NEWS_AND_POLITICS =
              T.let(
                :news_and_politics,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            NONPROFIT_AND_CHARITY =
              T.let(
                :nonprofit_and_charity,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            OFFICE_AND_BUSINESS_SUPPLIES =
              T.let(
                :office_and_business_supplies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            OUTDOOR_AND_SPORTS =
              T.let(
                :outdoor_and_sports,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PERSONAL_DEVELOPMENT =
              T.let(
                :personal_development,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PERSONAL_FINANCE =
              T.let(
                :personal_finance,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PERSONAL_SERVICES =
              T.let(
                :personal_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PET_SERVICES =
              T.let(
                :pet_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PETS_AND_ANIMALS =
              T.let(
                :pets_and_animals,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PRIMARY_AND_GENERAL_CARE =
              T.let(
                :primary_and_general_care,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PRODUCT_MARKETPLACES =
              T.let(
                :product_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PRODUCTIVITY_AND_BUSINESS_OPS =
              T.let(
                :productivity_and_business_ops,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PROFESSIONAL_GIGS =
              T.let(
                :professional_gigs,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PROFESSIONAL_SERVICES =
              T.let(
                :professional_services,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PROFESSIONAL_SERVICES_STOREFRONT =
              T.let(
                :professional_services_storefront,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            PUBLISHING_AND_INFO_PRODUCTS =
              T.let(
                :publishing_and_info_products,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            REAL_ESTATE =
              T.let(
                :real_estate,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            REAL_ESTATE_SOFTWARE =
              T.let(
                :real_estate_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            RECRUITING_AND_STAFFING =
              T.let(
                :recruiting_and_staffing,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            REHABILITATION_AND_THERAPY =
              T.let(
                :rehabilitation_and_therapy,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            RENTAL_MARKETPLACES =
              T.let(
                :rental_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            RETAIL =
              T.let(
                :retail,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SALES_AGENCIES =
              T.let(
                :sales_agencies,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SALES_AND_REVENUE =
              T.let(
                :sales_and_revenue,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SECURITY_AND_PRIVACY_SOFTWARE =
              T.let(
                :security_and_privacy_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SERVICE_MARKETPLACES =
              T.let(
                :service_marketplaces,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SLEEP_AND_CHRONIC_CONDITIONS =
              T.let(
                :sleep_and_chronic_conditions,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SOCIAL_AND_NETWORKING_EVENTS =
              T.let(
                :social_and_networking_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPECIALIZED_GIGS =
              T.let(
                :specialized_gigs,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPECIALTY_MEDICAL_CARE =
              T.let(
                :specialty_medical_care,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPIRITUALITY_AND_MINDFULNESS =
              T.let(
                :spirituality_and_mindfulness,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPIRITUALITY_AND_PERSONAL_GROWTH =
              T.let(
                :spirituality_and_personal_growth,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPORTS_AND_FITNESS_EVENTS =
              T.let(
                :sports_and_fitness_events,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPORTS_BETTING_AND_GAMBLING =
              T.let(
                :sports_betting_and_gambling,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SPORTS_BETTING_GROUPS =
              T.let(
                :sports_betting_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SUPPLEMENTS_AND_NUTRITION =
              T.let(
                :supplements_and_nutrition,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            SUSTAINABILITY_AND_ECO_PRODUCTS =
              T.let(
                :sustainability_and_eco_products,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TASK_AND_ERRANDS =
              T.let(
                :task_and_errands,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TECH_AND_AI =
              T.let(
                :tech_and_ai,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TECH_AND_DEV_GROUPS =
              T.let(
                :tech_and_dev_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TECH_AND_DEVELOPMENT =
              T.let(
                :tech_and_development,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TRADING_AND_FINANCE_SOFTWARE =
              T.let(
                :trading_and_finance_software,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TRADING_AND_INVESTING =
              T.let(
                :trading_and_investing,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TRADING_AND_INVESTING_GROUPS =
              T.let(
                :trading_and_investing_groups,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            TRANSPORTATION =
              T.let(
                :transportation,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            VETERINARY =
              T.let(
                :veterinary,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            VIDEO_GAMES_AND_ESPORTS =
              T.let(
                :video_games_and_esports,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            WEIGHT_AND_METABOLIC_HEALTH =
              T.let(
                :weight_and_metabolic_health,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            WELLNESS_AND_ALTERNATIVE =
              T.let(
                :wellness_and_alternative,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )
            WOMENS_AND_MENS_HEALTH =
              T.let(
                :womens_and_mens_health,
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Product::IndustryGroup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
  end
end
