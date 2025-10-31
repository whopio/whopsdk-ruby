# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#create
    class CheckoutConfigurationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute affiliate_code
      #   The affiliate code to use for the checkout configuration
      #
      #   @return [String, nil]
      optional :affiliate_code, String, nil?: true

      # @!attribute metadata
      #   The metadata to use for the checkout configuration
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute plan
      #   Pass this object to create a new plan for this checkout configuration
      #
      #   @return [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil]
      optional :plan, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan }, nil?: true

      # @!attribute plan_id
      #   The ID of the plan to use for the checkout configuration
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute redirect_url
      #   The URL to redirect the user to after the checkout configuration is created
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!method initialize(affiliate_code: nil, metadata: nil, plan: nil, plan_id: nil, redirect_url: nil, request_options: {})
      #   @param affiliate_code [String, nil] The affiliate code to use for the checkout configuration
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to use for the checkout configuration
      #
      #   @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil] Pass this object to create a new plan for this checkout configuration
      #
      #   @param plan_id [String, nil] The ID of the plan to use for the checkout configuration
      #
      #   @param redirect_url [String, nil] The URL to redirect the user to after the checkout configuration is created
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute company_id
        #   The company the plan should be created for.
        #
        #   @return [String]
        required :company_id, String

        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, WhopSDK::Models::Currency, nil]
        optional :currency, enum: -> { WhopSDK::Currency }, nil?: true

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
        #   The interval at which the plan charges (expiration plans).
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
        optional :image, -> { WhopSDK::CheckoutConfigurationCreateParams::Plan::Image }

        # @!attribute initial_price
        #   An additional amount charged upon first purchase.
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
        #   The type of plan that can be attached to an access pass
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
        #   The amount the customer is charged every billing period.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

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

        # @!method initialize(company_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, image: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, product: nil, product_id: nil, release_method: nil, renewal_price: nil, title: nil, trial_period_days: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan} for more details.
        #
        #   Pass this object to create a new plan for this checkout configuration
        #
        #   @param company_id [String] The company the plan should be created for.
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
        #
        #   @param custom_fields [Array<WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param force_create_new_plan [Boolean, nil] Whether to force the creation of a new plan even if one with the same attributes
        #
        #   @param image [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Image] An image for the plan. This will be visible on the product page to customers.
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
        #
        #   @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If not provided, the pla
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to an access pass
        #
        #   @param product [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Product, nil] Pass this object to create a new product for this plan. We will use the product
        #
        #   @param product_id [String, nil] The product the plan is related to. Either this or product is required.
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
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
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String, nil]
          optional :direct_upload_id, String, nil?: true

          # @!method initialize(id: nil, direct_upload_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CheckoutConfigurationCreateParams::Plan::Image} for more
          #   details.
          #
          #   An image for the plan. This will be visible on the product page to customers.
          #
          #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
          #
          #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
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
          #   The different statuses of the global affiliate program for an access pass.
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
          #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for an access pass.
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
    end
  end
end
