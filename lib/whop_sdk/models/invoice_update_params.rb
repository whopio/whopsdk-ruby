# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Invoices#update
    class InvoiceUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute automatically_finalizes_at
      #   The date and time when the invoice will be automatically finalized and charged.
      #
      #   @return [Time, nil]
      optional :automatically_finalizes_at, Time, nil?: true

      # @!attribute billing_address
      #   Inline billing address to create or update a mailing address for this invoice.
      #
      #   @return [WhopSDK::Models::InvoiceUpdateParams::BillingAddress, nil]
      optional :billing_address, -> { WhopSDK::InvoiceUpdateParams::BillingAddress }, nil?: true

      # @!attribute charge_buyer_fee
      #   Whether to charge the customer a buyer fee on this invoice.
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute collection_method
      #   The method of collection for an invoice.
      #
      #   @return [Symbol, WhopSDK::Models::CollectionMethod, nil]
      optional :collection_method, enum: -> { WhopSDK::CollectionMethod }, nil?: true

      # @!attribute customer_name
      #   The name of the customer.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute due_date
      #   The date by which the invoice must be paid.
      #
      #   @return [Time, nil]
      optional :due_date, Time, nil?: true

      # @!attribute email_address
      #   The email address of the customer.
      #
      #   @return [String, nil]
      optional :email_address, String, nil?: true

      # @!attribute line_items
      #   Line items that break down the invoice total.
      #
      #   @return [Array<WhopSDK::Models::InvoiceUpdateParams::LineItem>, nil]
      optional :line_items,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::InvoiceUpdateParams::LineItem] },
               nil?: true

      # @!attribute mailing_address_id
      #   The unique identifier of an existing mailing address to attach.
      #
      #   @return [String, nil]
      optional :mailing_address_id, String, nil?: true

      # @!attribute member_id
      #   The unique identifier of a member to assign as the customer.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute payment_method_id
      #   The unique identifier of the payment method to charge.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute plan
      #   Updated plan attributes.
      #
      #   @return [WhopSDK::Models::InvoiceUpdateParams::Plan, nil]
      optional :plan, -> { WhopSDK::InvoiceUpdateParams::Plan }, nil?: true

      # @!method initialize(id:, automatically_finalizes_at: nil, billing_address: nil, charge_buyer_fee: nil, collection_method: nil, customer_name: nil, due_date: nil, email_address: nil, line_items: nil, mailing_address_id: nil, member_id: nil, payment_method_id: nil, plan: nil, request_options: {})
      #   @param id [String]
      #
      #   @param automatically_finalizes_at [Time, nil] The date and time when the invoice will be automatically finalized and charged.
      #
      #   @param billing_address [WhopSDK::Models::InvoiceUpdateParams::BillingAddress, nil] Inline billing address to create or update a mailing address for this invoice.
      #
      #   @param charge_buyer_fee [Boolean, nil] Whether to charge the customer a buyer fee on this invoice.
      #
      #   @param collection_method [Symbol, WhopSDK::Models::CollectionMethod, nil] The method of collection for an invoice.
      #
      #   @param customer_name [String, nil] The name of the customer.
      #
      #   @param due_date [Time, nil] The date by which the invoice must be paid.
      #
      #   @param email_address [String, nil] The email address of the customer.
      #
      #   @param line_items [Array<WhopSDK::Models::InvoiceUpdateParams::LineItem>, nil] Line items that break down the invoice total.
      #
      #   @param mailing_address_id [String, nil] The unique identifier of an existing mailing address to attach.
      #
      #   @param member_id [String, nil] The unique identifier of a member to assign as the customer.
      #
      #   @param payment_method_id [String, nil] The unique identifier of the payment method to charge.
      #
      #   @param plan [WhopSDK::Models::InvoiceUpdateParams::Plan, nil] Updated plan attributes.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #   The country of the address.
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #   The line 1 of the address.
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #   The line 2 of the address.
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute name
        #   The name of the customer.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute phone
        #   The phone number of the customer.
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #   The state of the address.
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!attribute tax_id_type
        #   The type of tax identifier
        #
        #   @return [Symbol, WhopSDK::Models::TaxIdentifierType, nil]
        optional :tax_id_type, enum: -> { WhopSDK::TaxIdentifierType }, nil?: true

        # @!attribute tax_id_value
        #   The value of the tax identifier.
        #
        #   @return [String, nil]
        optional :tax_id_value, String, nil?: true

        # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, name: nil, phone: nil, postal_code: nil, state: nil, tax_id_type: nil, tax_id_value: nil)
        #   Inline billing address to create or update a mailing address for this invoice.
        #
        #   @param city [String, nil] The city of the address.
        #
        #   @param country [String, nil] The country of the address.
        #
        #   @param line1 [String, nil] The line 1 of the address.
        #
        #   @param line2 [String, nil] The line 2 of the address.
        #
        #   @param name [String, nil] The name of the customer.
        #
        #   @param phone [String, nil] The phone number of the customer.
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param state [String, nil] The state of the address.
        #
        #   @param tax_id_type [Symbol, WhopSDK::Models::TaxIdentifierType, nil] The type of tax identifier
        #
        #   @param tax_id_value [String, nil] The value of the tax identifier.
      end

      class LineItem < WhopSDK::Internal::Type::BaseModel
        # @!attribute label
        #   The label or description for this line item.
        #
        #   @return [String]
        required :label, String

        # @!attribute unit_price
        #   The unit price for this line item. Provided as a number in the specified
        #   currency. Eg: 10.43 for $10.43
        #
        #   @return [Float]
        required :unit_price, Float

        # @!attribute quantity
        #   The quantity of this line item. Defaults to 1.
        #
        #   @return [Float, nil]
        optional :quantity, Float, nil?: true

        # @!method initialize(label:, unit_price:, quantity: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::InvoiceUpdateParams::LineItem} for more details.
        #
        #   A single line item to include on the invoice, with a label, quantity, and unit
        #   price.
        #
        #   @param label [String] The label or description for this line item.
        #
        #   @param unit_price [Float] The unit price for this line item. Provided as a number in the specified currenc
        #
        #   @param quantity [Float, nil] The quantity of this line item. Defaults to 1.
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute billing_period
        #   The interval in days at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<WhopSDK::Models::InvoiceUpdateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::InvoiceUpdateParams::Plan::CustomField] },
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

        # @!attribute legacy_payment_method_controls
        #   Whether this plan uses legacy payment method controls
        #
        #   @return [Boolean, nil]
        optional :legacy_payment_method_controls, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute payment_method_configuration
        #   The explicit payment method configuration for the plan. If not provided, the
        #   platform or company's defaults will apply.
        #
        #   @return [WhopSDK::Models::InvoiceUpdateParams::Plan::PaymentMethodConfiguration, nil]
        optional :payment_method_configuration,
                 -> { WhopSDK::InvoiceUpdateParams::Plan::PaymentMethodConfiguration },
                 nil?: true

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

        # @!method initialize(billing_period: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, payment_method_configuration: nil, plan_type: nil, release_method: nil, renewal_price: nil, stock: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::InvoiceUpdateParams::Plan} for more details.
        #
        #   Updated plan attributes.
        #
        #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans).
        #
        #   @param custom_fields [Array<WhopSDK::Models::InvoiceUpdateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The number of days until the membership expires and revokes access (expiration p
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Use only if a one time payment
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls
        #
        #   @param payment_method_configuration [WhopSDK::Models::InvoiceUpdateParams::Plan::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If not provided, the pla
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

        # @see WhopSDK::Models::InvoiceUpdateParams::Plan#payment_method_configuration
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
          #   {WhopSDK::Models::InvoiceUpdateParams::Plan::PaymentMethodConfiguration} for
          #   more details.
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
      end
    end
  end
end
