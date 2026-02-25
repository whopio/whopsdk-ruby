# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#create
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create the payment for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute member_id
      #   The ID of the member to create the payment for.
      #
      #   @return [String]
      required :member_id, String

      # @!attribute payment_method_id
      #   The ID of the payment method to use for the payment. It must be connected to the
      #   Member being charged.
      #
      #   @return [String]
      required :payment_method_id, String

      # @!attribute plan
      #   Pass this object to create a new plan for this payment
      #
      #   @return [WhopSDK::Models::PaymentCreateParams::Plan]
      required :plan, -> { WhopSDK::PaymentCreateParams::Plan }

      # @!attribute metadata
      #   Custom metadata to attach to the payment.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute plan_id
      #   An ID of an existing plan to use for the payment.
      #
      #   @return [String]
      required :plan_id, String

      # @!method initialize(company_id:, member_id:, payment_method_id:, plan:, plan_id:, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentCreateParams} for more details.
      #
      #   @param company_id [String] The ID of the company to create the payment for.
      #
      #   @param member_id [String] The ID of the member to create the payment for.
      #
      #   @param payment_method_id [String] The ID of the payment method to use for the payment. It must be connected to the
      #
      #   @param plan [WhopSDK::Models::PaymentCreateParams::Plan] Pass this object to create a new plan for this payment
      #
      #   @param plan_id [String] An ID of an existing plan to use for the payment.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata to attach to the payment.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute billing_period
        #   The interval in days at which the plan charges (renewal plans). For example, 30
        #   for monthly billing.
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute description
        #   The description of the plan.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   The number of days until the membership expires and revokes access (expiration
        #   plans). For example, 365 for one year.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute force_create_new_plan
        #   Whether to force the creation of a new plan even if one with the same attributes
        #   already exists.
        #
        #   @return [Boolean, nil]
        optional :force_create_new_plan, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute initial_price
        #   An additional amount charged upon first purchase. Provided as a number in the
        #   specified currency. Eg: 10.43 for $10.43 USD.
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute internal_notes
        #   A personal description or notes section for the business.
        #
        #   @return [String, nil]
        optional :internal_notes, String, nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to a product
        #
        #   @return [Symbol, WhopSDK::Models::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PlanType }, nil?: true

        # @!attribute product
        #   Pass this object to create a new product for this plan. We will use the product
        #   external identifier to find or create an existing product.
        #
        #   @return [WhopSDK::Models::PaymentCreateParams::Plan::Product, nil]
        optional :product, -> { WhopSDK::PaymentCreateParams::Plan::Product }, nil?: true

        # @!attribute product_id
        #   The product the plan is related to. Either this or product is required.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period. Provided as a number in
        #   the specified currency. Eg: 10.43 for $10.43 USD.
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

        # @!method initialize(currency:, billing_period: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, initial_price: nil, internal_notes: nil, plan_type: nil, product: nil, product_id: nil, renewal_price: nil, title: nil, trial_period_days: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentCreateParams::Plan} for more details.
        #
        #   Pass this object to create a new plan for this payment
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
        #
        #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans). For example, 30
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The number of days until the membership expires and revokes access (expiration p
        #
        #   @param force_create_new_plan [Boolean, nil] Whether to force the creation of a new plan even if one with the same attributes
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Provided as a number in the sp
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
        #
        #   @param product [WhopSDK::Models::PaymentCreateParams::Plan::Product, nil] Pass this object to create a new product for this plan. We will use the product
        #
        #   @param product_id [String, nil] The product the plan is related to. Either this or product is required.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Provided as a number in
        #
        #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource

        # @see WhopSDK::Models::PaymentCreateParams::Plan#product
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

          # @!method initialize(external_identifier:, title:, collect_shipping_address: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentCreateParams::Plan::Product} for more details.
          #
          #   Pass this object to create a new product for this plan. We will use the product
          #   external identifier to find or create an existing product.
          #
          #   @param external_identifier [String] A unique ID used to find or create a product. When provided during creation, we
          #
          #   @param title [String] The title of the product.
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
