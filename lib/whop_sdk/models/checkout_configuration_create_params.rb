# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#create
    class CheckoutConfigurationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute plan
      #   The plan attributes to create a new plan inline for this checkout configuration.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan]
      required :plan, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan }

      # @!attribute affiliate_code
      #   An affiliate tracking code to attribute the checkout to a specific affiliate.
      #
      #   @return [String, nil]
      optional :affiliate_code, String, nil?: true

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      optional :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute metadata
      #   Custom key-value metadata to attach to the checkout configuration.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute mode
      #
      #   @return [Symbol, :setup]
      required :mode, const: :setup

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the checkout session. Only applies
      #   to setup mode. If not provided, the platform or company defaults will apply.
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::CheckoutConfigurationCreateParams::PaymentMethodConfiguration },
               nil?: true

      # @!attribute redirect_url
      #   The URL to redirect the user to after checkout is completed.
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!attribute source_url
      #   The URL of the page where the checkout is being initiated from.
      #
      #   @return [String, nil]
      optional :source_url, String, nil?: true

      # @!attribute plan_id
      #   The unique identifier of an existing plan to use for this checkout
      #   configuration.
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute company_id
      #   The unique identifier of the company to create the checkout configuration for.
      #   Only required in setup mode.
      #
      #   @return [String]
      required :company_id, String

      # @!method initialize(plan:, plan_id:, company_id:, affiliate_code: nil, currency: nil, metadata: nil, payment_method_configuration: nil, redirect_url: nil, source_url: nil, mode: :setup, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CheckoutConfigurationCreateParams} for more details.
      #
      #   @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan] The plan attributes to create a new plan inline for this checkout configuration.
      #
      #   @param plan_id [String] The unique identifier of an existing plan to use for this checkout configuration
      #
      #   @param company_id [String] The unique identifier of the company to create the checkout configuration for. O
      #
      #   @param affiliate_code [String, nil] An affiliate tracking code to attribute the checkout to a specific affiliate.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value metadata to attach to the checkout configuration.
      #
      #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] The explicit payment method configuration for the checkout session. Only applies
      #
      #   @param redirect_url [String, nil] The URL to redirect the user to after checkout is completed.
      #
      #   @param source_url [String, nil] The URL of the page where the checkout is being initiated from.
      #
      #   @param mode [Symbol, :setup]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute company_id
        #   The company the plan should be created for.
        #
        #   @return [String]
        required :company_id, String

        # @!attribute currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute application_fee_amount
        #   The application fee amount collected by the platform from this connected
        #   account. Provided as a number in dollars (e.g., 5.00 for $5.00). Must be less
        #   than the total payment amount. Only valid for connected accounts with a parent
        #   company.
        #
        #   @return [Float, nil]
        optional :application_fee_amount, Float, nil?: true

        # @!attribute billing_period
        #   The interval in days at which the plan charges (renewal plans). For example, 30
        #   for monthly billing.
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField]
                 },
                 nil?: true

        # @!attribute description
        #   The description of the plan.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   The number of days until the membership expires (for expiration-based plans).
        #   For example, 365 for a one-year access pass.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute force_create_new_plan
        #   Whether to force the creation of a new plan even if one with the same attributes
        #   already exists.
        #
        #   @return [Boolean, nil]
        optional :force_create_new_plan, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute image
        #   An image for the plan. This will be visible on the product page to customers.
        #
        #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Image, nil]
        optional :image, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::Image }, nil?: true

        # @!attribute initial_price
        #   An additional amount charged upon first purchase. Provided as a number in
        #   dollars (e.g., 10.00 for $10.00).
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute internal_notes
        #   A personal description or notes section for the business.
        #
        #   @return [String, nil]
        optional :internal_notes, String, nil?: true

        # @!attribute override_tax_type
        #   Whether or not the tax is included in a plan's price (or if it hasn't been set
        #   up)
        #
        #   @return [Symbol, WhopSDK::Models::TaxType, nil]
        optional :override_tax_type, enum: -> { WhopSDK::TaxType }, nil?: true

        # @!attribute payment_method_configuration
        #   The explicit payment method configuration for the plan. If not provided, the
        #   platform or company's defaults will apply.
        #
        #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration, nil]
        optional :payment_method_configuration,
                 -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration },
                 nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to a product
        #
        #   @return [Symbol, WhopSDK::Models::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PlanType }, nil?: true

        # @!attribute product
        #   Pass this object to create a new product for this plan. We will use the product
        #   external identifier to find or create an existing product.
        #
        #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Product, nil]
        optional :product, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::Product }, nil?: true

        # @!attribute product_id
        #   The product the plan is related to. Either this or product is required.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { WhopSDK::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period. Provided as a number in
        #   dollars (e.g., 9.99 for $9.99/period).
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute split_pay_required_payments
        #   The number of payments required before pausing the subscription.
        #
        #   @return [Integer, nil]
        optional :split_pay_required_payments, Integer, nil?: true

        # @!attribute stock
        #   The number of units available for purchase. If not provided, stock is unlimited.
        #
        #   @return [Integer, nil]
        optional :stock, Integer, nil?: true

        # @!attribute title
        #   The title of the plan. This will be visible on the product page to customers.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute trial_period_days
        #   The number of free trial days added before a renewal plan.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, WhopSDK::Models::Visibility, nil]
        optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

        # @!method initialize(company_id:, currency:, application_fee_amount: nil, billing_period: nil, custom_fields: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, image: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, product: nil, product_id: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, title: nil, trial_period_days: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan} for more details.
        #
        #   The plan attributes to create a new plan inline for this checkout configuration.
        #
        #   @param company_id [String] The company the plan should be created for.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
        #
        #   @param application_fee_amount [Float, nil] The application fee amount collected by the platform from this connected account
        #
        #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans). For example, 30
        #
        #   @param custom_fields [Array<WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The number of days until the membership expires (for expiration-based plans). Fo
        #
        #   @param force_create_new_plan [Boolean, nil] Whether to force the creation of a new plan even if one with the same attributes
        #
        #   @param image [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Image, nil] An image for the plan. This will be visible on the product page to customers.
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Provided as a number in dollar
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
        #
        #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If not provided, the pla
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
        #
        #   @param product [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Product, nil] Pass this object to create a new product for this plan. We will use the product
        #
        #   @param product_id [String, nil] The product the plan is related to. Either this or product is required.
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Provided as a number in
        #
        #   @param split_pay_required_payments [Integer, nil] The number of payments required before pausing the subscription.
        #
        #   @param stock [Integer, nil] The number of units available for purchase. If not provided, stock is unlimited.
        #
        #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource

        class CustomField < WhopSDK::Internal::Type::BaseModel
          # @!attribute field_type
          #   The type of the custom field.
          #
          #   @return [Symbol, :text]
          required :field_type, const: :text

          # @!attribute name
          #   The name of the custom field.
          #
          #   @return [String]
          required :name, String

          # @!attribute id
          #   The ID of the custom field (if being updated)
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute order
          #   The order of the field.
          #
          #   @return [Integer, nil]
          optional :order, Integer, nil?: true

          # @!attribute placeholder
          #   The placeholder value of the field.
          #
          #   @return [String, nil]
          optional :placeholder, String, nil?: true

          # @!attribute required
          #   Whether or not the field is required.
          #
          #   @return [Boolean, nil]
          optional :required, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!method initialize(name:, id: nil, order: nil, placeholder: nil, required: nil, field_type: :text)
          #   @param name [String] The name of the custom field.
          #
          #   @param id [String, nil] The ID of the custom field (if being updated)
          #
          #   @param order [Integer, nil] The order of the field.
          #
          #   @param placeholder [String, nil] The placeholder value of the field.
          #
          #   @param required [Boolean, nil] Whether or not the field is required.
          #
          #   @param field_type [Symbol, :text] The type of the custom field.
        end

        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#image
        class Image < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing file object.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   An image for the plan. This will be visible on the product page to customers.
          #
          #   @param id [String] The ID of an existing file object.
        end

        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#payment_method_configuration
        class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
          # @!attribute disabled
          #   An array of payment method identifiers that are explicitly disabled. Only
          #   applies if the include_platform_defaults is true.
          #
          #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
          required :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

          # @!attribute enabled
          #   An array of payment method identifiers that are explicitly enabled. This means
          #   these payment methods will be shown on checkout. Example use case is to only
          #   enable a specific payment method like cashapp, or extending the platform
          #   defaults with additional methods.
          #
          #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
          required :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

          # @!attribute include_platform_defaults
          #   Whether Whop's platform default payment method enablement settings are included
          #   in this configuration. The full list of default payment methods can be found in
          #   the documentation at docs.whop.com/payments.
          #
          #   @return [Boolean]
          required :include_platform_defaults, WhopSDK::Internal::Type::Boolean

          # @!method initialize(disabled:, enabled:, include_platform_defaults:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration}
          #   for more details.
          #
          #   The explicit payment method configuration for the plan. If not provided, the
          #   platform or company's defaults will apply.
          #
          #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly disabled. Only applie
          #
          #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly enabled. This means t
          #
          #   @param include_platform_defaults [Boolean] Whether Whop's platform default payment method enablement settings are included
        end

        # @see WhopSDK::Models::CheckoutConfigurationCreateParams::Plan#product
        class Product < WhopSDK::Internal::Type::BaseModel
          # @!attribute external_identifier
          #   A unique ID used to find or create a product. When provided during creation, we
          #   will look for an existing product with this external identifier — if found, it
          #   will be updated; otherwise, a new product will be created.
          #
          #   @return [String]
          required :external_identifier, String

          # @!attribute title
          #   The title of the product.
          #
          #   @return [String]
          required :title, String

          # @!attribute business_type
          #   The different business types a company can be.
          #
          #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
          optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

          # @!attribute collect_shipping_address
          #   Whether or not to collect shipping information at checkout from the customer.
          #
          #   @return [Boolean, nil]
          optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute custom_statement_descriptor
          #   The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
          #   between 5 and 22 characters, contain at least one letter, and not contain any of
          #   the following characters: <, >, \, ', "
          #
          #   @return [String, nil]
          optional :custom_statement_descriptor, String, nil?: true

          # @!attribute description
          #   A written description of the product.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute global_affiliate_percentage
          #   The percentage of the revenue that goes to the global affiliate program.
          #
          #   @return [Float, nil]
          optional :global_affiliate_percentage, Float, nil?: true

          # @!attribute global_affiliate_status
          #   The different statuses of the global affiliate program for a product.
          #
          #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
          optional :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

          # @!attribute headline
          #   The headline of the product.
          #
          #   @return [String, nil]
          optional :headline, String, nil?: true

          # @!attribute industry_type
          #   The different industry types a company can be in.
          #
          #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
          optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

          # @!attribute product_tax_code_id
          #   The ID of the product tax code to apply to this product.
          #
          #   @return [String, nil]
          optional :product_tax_code_id, String, nil?: true

          # @!attribute redirect_purchase_url
          #   The URL to redirect the customer to after a purchase.
          #
          #   @return [String, nil]
          optional :redirect_purchase_url, String, nil?: true

          # @!attribute route
          #   The route of the product.
          #
          #   @return [String, nil]
          optional :route, String, nil?: true

          # @!attribute visibility
          #   Visibility of a resource
          #
          #   @return [Symbol, WhopSDK::Models::Visibility, nil]
          optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

          # @!method initialize(external_identifier:, title:, business_type: nil, collect_shipping_address: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_type: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Product} for more
          #   details.
          #
          #   Pass this object to create a new product for this plan. We will use the product
          #   external identifier to find or create an existing product.
          #
          #   @param external_identifier [String] A unique ID used to find or create a product. When provided during creation, we
          #
          #   @param title [String] The title of the product.
          #
          #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
          #
          #   @param collect_shipping_address [Boolean, nil] Whether or not to collect shipping information at checkout from the customer.
          #
          #   @param custom_statement_descriptor [String, nil] The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
          #   betwee
          #
          #   @param description [String, nil] A written description of the product.
          #
          #   @param global_affiliate_percentage [Float, nil] The percentage of the revenue that goes to the global affiliate program.
          #
          #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
          #
          #   @param headline [String, nil] The headline of the product.
          #
          #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
          #
          #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this product.
          #
          #   @param redirect_purchase_url [String, nil] The URL to redirect the customer to after a purchase.
          #
          #   @param route [String, nil] The route of the product.
          #
          #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   An array of payment method identifiers that are explicitly disabled. Only
        #   applies if the include_platform_defaults is true.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
        required :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute enabled
        #   An array of payment method identifiers that are explicitly enabled. This means
        #   these payment methods will be shown on checkout. Example use case is to only
        #   enable a specific payment method like cashapp, or extending the platform
        #   defaults with additional methods.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>]
        required :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute include_platform_defaults
        #   Whether Whop's platform default payment method enablement settings are included
        #   in this configuration. The full list of default payment methods can be found in
        #   the documentation at docs.whop.com/payments.
        #
        #   @return [Boolean]
        required :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled:, enabled:, include_platform_defaults:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration}
        #   for more details.
        #
        #   The explicit payment method configuration for the checkout session. Only applies
        #   to setup mode. If not provided, the platform or company defaults will apply.
        #
        #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly disabled. Only applie
        #
        #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly enabled. This means t
        #
        #   @param include_platform_defaults [Boolean] Whether Whop's platform default payment method enablement settings are included
      end
    end
  end
end
