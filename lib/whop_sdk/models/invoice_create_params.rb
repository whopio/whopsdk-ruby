# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Invoices#create
    class InvoiceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute collection_method
      #   How the invoice should be collected. Use charge_automatically to charge a stored
      #   payment method, or send_invoice to email the customer.
      #
      #   @return [Symbol, WhopSDK::Models::CollectionMethod]
      required :collection_method, enum: -> { WhopSDK::CollectionMethod }

      # @!attribute company_id
      #   The unique identifier of the company to create this invoice for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute due_date
      #   The date by which the invoice must be paid.
      #
      #   @return [Time]
      required :due_date, Time

      # @!attribute member_id
      #   The unique identifier of an existing member to create this invoice for. If not
      #   provided, you must supply an email_address and customer_name.
      #
      #   @return [String]
      required :member_id, String

      # @!attribute plan
      #   The plan attributes defining the price, currency, and billing interval for this
      #   invoice.
      #
      #   @return [WhopSDK::Models::InvoiceCreateParams::Plan]
      required :plan, -> { WhopSDK::InvoiceCreateParams::Plan }

      # @!attribute product
      #   The properties of the product to create for this invoice. Provide this to create
      #   a new product inline.
      #
      #   @return [WhopSDK::Models::InvoiceCreateParams::Product]
      required :product, -> { WhopSDK::InvoiceCreateParams::Product }

      # @!attribute charge_buyer_fee
      #   Whether to charge the customer a buyer fee on this invoice.
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute customer_name
      #   The name of the customer. Required when creating an invoice for a customer who
      #   is not yet a member of the company.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute payment_method_id
      #   The unique identifier of the payment method to charge. Required when
      #   collection_method is charge_automatically.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute payment_token_id
      #   The payment token ID to use for this invoice. If using charge_automatically, you
      #   must provide a payment_token.
      #
      #   @return [String, nil]
      optional :payment_token_id, String, nil?: true

      # @!attribute email_address
      #   The email address of the customer. Required when creating an invoice for a
      #   customer who is not yet a member of the company.
      #
      #   @return [String]
      required :email_address, String

      # @!attribute product_id
      #   The unique identifier of an existing product to create this invoice for.
      #
      #   @return [String]
      required :product_id, String

      # @!method initialize(collection_method:, company_id:, due_date:, member_id:, plan:, product:, email_address:, product_id:, charge_buyer_fee: nil, customer_name: nil, payment_method_id: nil, payment_token_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoiceCreateParams} for more details.
      #
      #   @param collection_method [Symbol, WhopSDK::Models::CollectionMethod] How the invoice should be collected. Use charge_automatically to charge a stored
      #
      #   @param company_id [String] The unique identifier of the company to create this invoice for.
      #
      #   @param due_date [Time] The date by which the invoice must be paid.
      #
      #   @param member_id [String] The unique identifier of an existing member to create this invoice for. If not p
      #
      #   @param plan [WhopSDK::Models::InvoiceCreateParams::Plan] The plan attributes defining the price, currency, and billing interval for this
      #
      #   @param product [WhopSDK::Models::InvoiceCreateParams::Product] The properties of the product to create for this invoice. Provide this to create
      #
      #   @param email_address [String] The email address of the customer. Required when creating an invoice for a custo
      #
      #   @param product_id [String] The unique identifier of an existing product to create this invoice for.
      #
      #   @param charge_buyer_fee [Boolean, nil] Whether to charge the customer a buyer fee on this invoice.
      #
      #   @param customer_name [String, nil] The name of the customer. Required when creating an invoice for a customer who i
      #
      #   @param payment_method_id [String, nil] The unique identifier of the payment method to charge. Required when
      #   collection\_
      #
      #   @param payment_token_id [String, nil] The payment token ID to use for this invoice. If using charge_automatically, you
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute billing_period
        #   The interval in days at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<WhopSDK::Models::InvoiceCreateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::InvoiceCreateParams::Plan::CustomField] },
                 nil?: true

        # @!attribute description
        #   The description of the plan.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   The number of days until the membership expires and revokes access (expiration
        #   plans). For example, 365 for a one-year access period.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #   An additional amount charged upon first purchase. Use only if a one time payment
        #   OR you want to charge an additional amount on top of the renewal price. Provided
        #   as a number in the specified currency. Eg: 10.43 for $10.43
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

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { WhopSDK::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period. Use only if a recurring
        #   payment. Provided as a number in the specified currency. Eg: 10.43 for $10.43
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute stock
        #   The number of units available for purchase.
        #
        #   @return [Integer, nil]
        optional :stock, Integer, nil?: true

        # @!attribute trial_period_days
        #   The number of free trial days added before a renewal plan.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute unlimited_stock
        #   When true, the plan has unlimited stock (stock field is ignored). When false,
        #   purchases are limited by the stock field.
        #
        #   @return [Boolean, nil]
        optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, WhopSDK::Models::Visibility, nil]
        optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

        # @!method initialize(billing_period: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, plan_type: nil, release_method: nil, renewal_price: nil, stock: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::InvoiceCreateParams::Plan} for more details.
        #
        #   The plan attributes defining the price, currency, and billing interval for this
        #   invoice.
        #
        #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans).
        #
        #   @param custom_fields [Array<WhopSDK::Models::InvoiceCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The number of days until the membership expires and revokes access (expiration p
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Use only if a one time payment
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Use only if a recurring
        #
        #   @param stock [Integer, nil] The number of units available for purchase.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param unlimited_stock [Boolean, nil] When true, the plan has unlimited stock (stock field is ignored). When false, pu
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
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute title
        #   The title of the product.
        #
        #   @return [String]
        required :title, String

        # @!attribute product_tax_code_id
        #   The ID of the product tax code to apply to this product.
        #
        #   @return [String, nil]
        optional :product_tax_code_id, String, nil?: true

        # @!method initialize(title:, product_tax_code_id: nil)
        #   The properties of the product to create for this invoice. Provide this to create
        #   a new product inline.
        #
        #   @param title [String] The title of the product.
        #
        #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this product.
      end
    end
  end
end
