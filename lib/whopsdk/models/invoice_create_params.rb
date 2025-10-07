# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#create
    class InvoiceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute collection_method
      #   The method of collection for an invoice.
      #
      #   @return [Symbol, Whopsdk::Models::CollectionMethod, nil]
      required :collection_method, enum: -> { Whopsdk::CollectionMethod }, nil?: true

      # @!attribute company_id
      #   The company ID to create this invoice for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute due_date
      #   The date the invoice is due, if applicable.
      #
      #   @return [Integer]
      required :due_date, Integer

      # @!attribute plan
      #   The properties of the plan to create for this invoice.
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::Plan]
      required :plan, -> { Whopsdk::InvoiceCreateParams::Plan }

      # @!attribute charge_buyer_fee
      #   Whether or not to charge the customer a buyer fee.
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, Whopsdk::Internal::Type::Boolean, nil?: true

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
      #   The properties of the access pass to create for this invoice. Include this if
      #   you want to create an invoice for a new product.
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::Product, nil]
      optional :product, -> { Whopsdk::InvoiceCreateParams::Product }, nil?: true

      # @!attribute product_id
      #   The access pass ID to create this invoice for. Include this if you want to
      #   create an invoice for an existing product.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!method initialize(collection_method:, company_id:, due_date:, plan:, charge_buyer_fee: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, product: nil, product_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceCreateParams} for more details.
      #
      #   @param collection_method [Symbol, Whopsdk::Models::CollectionMethod, nil] The method of collection for an invoice.
      #
      #   @param company_id [String] The company ID to create this invoice for.
      #
      #   @param due_date [Integer] The date the invoice is due, if applicable.
      #
      #   @param plan [Whopsdk::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
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
      #   @param product [Whopsdk::Models::InvoiceCreateParams::Product, nil] The properties of the access pass to create for this invoice. Include this if yo
      #
      #   @param product_id [String, nil] The access pass ID to create this invoice for. Include this if you want to creat
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute ach_payments
        #   Whether or not ACH payments are accepted
        #
        #   @return [Boolean, nil]
        optional :ach_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute base_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, Whopsdk::Models::Currency, nil]
        optional :base_currency, enum: -> { Whopsdk::Currency }, nil?: true

        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute card_payments
        #   Whether or not card payments are accepted
        #
        #   @return [Boolean, nil]
        optional :card_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute coinbase_commerce_accepted
        #   Marks whether coinbase commerce payments are/aren't accepted.
        #
        #   @return [Boolean, nil]
        optional :coinbase_commerce_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<Whopsdk::Models::InvoiceCreateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::InvoiceCreateParams::Plan::CustomField] },
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

        # @!attribute offer_cancel_discount
        #   Whether or not to offer a discount to cancel a subscription.
        #
        #   @return [Boolean, nil]
        optional :offer_cancel_discount, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute paypal_accepted
        #   Marks whether paypal payments are/aren't accepted.
        #
        #   @return [Boolean, nil]
        optional :paypal_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to an access pass
        #
        #   @return [Symbol, Whopsdk::Models::PlanType, nil]
        optional :plan_type, enum: -> { Whopsdk::PlanType }, nil?: true

        # @!attribute platform_balance_accepted
        #   Marks whether platform balance payments are/aren't accepted.
        #
        #   @return [Boolean, nil]
        optional :platform_balance_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute redirect_url
        #   The URL to redirect the customer to after purchase.
        #
        #   @return [String, nil]
        optional :redirect_url, String, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, Whopsdk::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { Whopsdk::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute split_pay_required_payments
        #   The number of payments required before pausing the subscription.
        #
        #   @return [Integer, nil]
        optional :split_pay_required_payments, Integer, nil?: true

        # @!attribute splitit_accepted
        #   Marks whether payments using splitit, a payment processor, are/aren't accepted
        #   for the plan.
        #
        #   @return [Boolean, nil]
        optional :splitit_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

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
        #   Limits/doesn't limit the number of units available for purchase.
        #
        #   @return [Boolean, nil]
        optional :unlimited_stock, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, Whopsdk::Models::Visibility, nil]
        optional :visibility, enum: -> { Whopsdk::Visibility }, nil?: true

        # @!method initialize(ach_payments: nil, base_currency: nil, billing_period: nil, card_payments: nil, coinbase_commerce_accepted: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, paypal_accepted: nil, plan_type: nil, platform_balance_accepted: nil, redirect_url: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, splitit_accepted: nil, stock: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceCreateParams::Plan} for more details.
        #
        #   The properties of the plan to create for this invoice.
        #
        #   @param ach_payments [Boolean, nil] Whether or not ACH payments are accepted
        #
        #   @param base_currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param card_payments [Boolean, nil] Whether or not card payments are accepted
        #
        #   @param coinbase_commerce_accepted [Boolean, nil] Marks whether coinbase commerce payments are/aren't accepted.
        #
        #   @param custom_fields [Array<Whopsdk::Models::InvoiceCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param offer_cancel_discount [Boolean, nil] Whether or not to offer a discount to cancel a subscription.
        #
        #   @param paypal_accepted [Boolean, nil] Marks whether paypal payments are/aren't accepted.
        #
        #   @param plan_type [Symbol, Whopsdk::Models::PlanType, nil] The type of plan that can be attached to an access pass
        #
        #   @param platform_balance_accepted [Boolean, nil] Marks whether platform balance payments are/aren't accepted.
        #
        #   @param redirect_url [String, nil] The URL to redirect the customer to after purchase.
        #
        #   @param release_method [Symbol, Whopsdk::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
        #
        #   @param split_pay_required_payments [Integer, nil] The number of payments required before pausing the subscription.
        #
        #   @param splitit_accepted [Boolean, nil] Marks whether payments using splitit, a payment processor, are/aren't accepted f
        #
        #   @param stock [Integer, nil] The number of units available for purchase.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param unlimited_stock [Boolean, nil] Limits/doesn't limit the number of units available for purchase.
        #
        #   @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource

        class CustomField < Whopsdk::Internal::Type::BaseModel
          # @!attribute field_type
          #   The type of the custom field.
          #
          #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::CustomField::FieldType, nil]
          required :field_type,
                   enum: -> {
                     Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType
                   },
                   nil?: true

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
          optional :required, Whopsdk::Internal::Type::Boolean, nil?: true

          # @!method initialize(field_type:, name:, id: nil, order: nil, placeholder: nil, required: nil)
          #   @param field_type [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::CustomField::FieldType, nil] The type of the custom field.
          #
          #   @param name [String] The name of the custom field.
          #
          #   @param id [String, nil] The ID of the custom field (if being updated)
          #
          #   @param order [Integer, nil] The order of the field.
          #
          #   @param placeholder [String, nil] The placeholder value of the field.
          #
          #   @param required [Boolean, nil] Whether or not the field is required.

          # The type of the custom field.
          #
          # @see Whopsdk::Models::InvoiceCreateParams::Plan::CustomField#field_type
          module FieldType
            extend Whopsdk::Internal::Type::Enum

            TEXT = :text

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class Product < Whopsdk::Internal::Type::BaseModel
        # @!attribute title
        #   The title of the access pass.
        #
        #   @return [String]
        required :title, String

        # @!attribute product_tax_code_id
        #   The ID of the product tax code to apply to this access pass.
        #
        #   @return [String, nil]
        optional :product_tax_code_id, String, nil?: true

        # @!method initialize(title:, product_tax_code_id: nil)
        #   The properties of the access pass to create for this invoice. Include this if
        #   you want to create an invoice for a new product.
        #
        #   @param title [String] The title of the access pass.
        #
        #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this access pass.
      end
    end
  end
end
