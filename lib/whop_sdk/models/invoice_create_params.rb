# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Invoices#create
    class InvoiceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute collection_method
      #   The method of collection for this invoice. If using charge_automatically, you
      #   must provide a payment_token.
      #
      #   @return [Symbol, WhopSDK::Models::CollectionMethod]
      required :collection_method, enum: -> { WhopSDK::CollectionMethod }

      # @!attribute company_id
      #   The company ID to create this invoice for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute due_date
      #   The date the invoice is due, if applicable.
      #
      #   @return [Time]
      required :due_date, Time

      # @!attribute plan
      #   The properties of the plan to create for this invoice.
      #
      #   @return [WhopSDK::Models::InvoiceCreateParams::Plan]
      required :plan, -> { WhopSDK::InvoiceCreateParams::Plan }

      # @!attribute charge_buyer_fee
      #   Whether or not to charge the customer a buyer fee.
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute customer_name
      #   The name of the customer to create this invoice for. This is required if you
      #   want to create an invoice for a customer who does not have a member of your
      #   company yet.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute email_address
      #   The email address to create this invoice for. This is required if you want to
      #   create an invoice for a user who does not have a member of your company yet.
      #
      #   @return [String, nil]
      optional :email_address, String, nil?: true

      # @!attribute member_id
      #   The member ID to create this invoice for. Include this if you want to create an
      #   invoice for an existing member. If you do not have a member ID, you must provide
      #   an email_address and customer_name.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute payment_token_id
      #   The payment token ID to use for this invoice. If using charge_automatically, you
      #   must provide a payment_token.
      #
      #   @return [String, nil]
      optional :payment_token_id, String, nil?: true

      # @!attribute product
      #   The properties of the product to create for this invoice. Include this if you
      #   want to create an invoice for a new product.
      #
      #   @return [WhopSDK::Models::InvoiceCreateParams::Product, nil]
      optional :product, -> { WhopSDK::InvoiceCreateParams::Product }, nil?: true

      # @!attribute product_id
      #   The product ID to create this invoice for. Include this if you want to create an
      #   invoice for an existing product.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!method initialize(collection_method:, company_id:, due_date:, plan:, charge_buyer_fee: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, product: nil, product_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoiceCreateParams} for more details.
      #
      #   @param collection_method [Symbol, WhopSDK::Models::CollectionMethod] The method of collection for this invoice. If using charge_automatically, you mu
      #
      #   @param company_id [String] The company ID to create this invoice for.
      #
      #   @param due_date [Time] The date the invoice is due, if applicable.
      #
      #   @param plan [WhopSDK::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      #   @param charge_buyer_fee [Boolean, nil] Whether or not to charge the customer a buyer fee.
      #
      #   @param customer_name [String, nil] The name of the customer to create this invoice for. This is required if you wan
      #
      #   @param email_address [String, nil] The email address to create this invoice for. This is required if you want to cr
      #
      #   @param member_id [String, nil] The member ID to create this invoice for. Include this if you want to create an
      #
      #   @param payment_token_id [String, nil] The payment token ID to use for this invoice. If using charge_automatically, you
      #
      #   @param product [WhopSDK::Models::InvoiceCreateParams::Product, nil] The properties of the product to create for this invoice. Include this if you wa
      #
      #   @param product_id [String, nil] The product ID to create this invoice for. Include this if you want to create an
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
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
        #   The interval at which the plan charges (expiration plans).
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

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

        # @!attribute plan_type
        #   The type of plan that can be attached to an access pass
        #
        #   @return [Symbol, WhopSDK::Models::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PlanType }, nil?: true

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

        # @!method initialize(billing_period: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, plan_type: nil, release_method: nil, renewal_price: nil, trial_period_days: nil, visibility: nil)
        #   The properties of the plan to create for this invoice.
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param custom_fields [Array<WhopSDK::Models::InvoiceCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to an access pass
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
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
        #   The properties of the product to create for this invoice. Include this if you
        #   want to create an invoice for a new product.
        #
        #   @param title [String] The title of the product.
        #
        #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this product.
      end
    end
  end
end
