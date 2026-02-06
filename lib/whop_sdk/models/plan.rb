# frozen_string_literal: true

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the plan.
      #
      #   @return [String]
      required :id, String

      # @!attribute billing_period
      #   The interval in days at which the plan charges (renewal plans).
      #
      #   @return [Integer, nil]
      required :billing_period, Integer, nil?: true

      # @!attribute collect_tax
      #   Whether or not the plan collects tax.
      #
      #   @return [Boolean]
      required :collect_tax, WhopSDK::Internal::Type::Boolean

      # @!attribute company
      #   The company for the plan.
      #
      #   @return [WhopSDK::Models::Plan::Company, nil]
      required :company, -> { WhopSDK::Plan::Company }, nil?: true

      # @!attribute created_at
      #   When the plan was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The respective currency identifier for the plan.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute custom_fields
      #   The custom fields for the plan.
      #
      #   @return [Array<WhopSDK::Models::Plan::CustomField>]
      required :custom_fields, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField] }

      # @!attribute description
      #   The description of the plan.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   The number of days until the membership expires (for expiration-based plans).
      #   For example, 365 for a one-year access pass.
      #
      #   @return [Integer, nil]
      required :expiration_days, Integer, nil?: true

      # @!attribute initial_price
      #   The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
      #   For one-time plans, this is the full price. For renewal plans, this is charged
      #   on top of the first renewal_price.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   A personal description or notes section for the business.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice associated with this plan.
      #
      #   @return [WhopSDK::Models::Plan::Invoice, nil]
      required :invoice, -> { WhopSDK::Plan::Invoice }, nil?: true

      # @!attribute member_count
      #   The number of members for the plan.
      #
      #   @return [Integer, nil]
      required :member_count, Integer, nil?: true

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the plan, if any.
      #
      #   @return [WhopSDK::Models::Plan::PaymentMethodConfiguration, nil]
      required :payment_method_configuration, -> { WhopSDK::Plan::PaymentMethodConfiguration }, nil?: true

      # @!attribute plan_type
      #   Indicates if the plan is a one time payment or recurring.
      #
      #   @return [Symbol, WhopSDK::Models::PlanType]
      required :plan_type, enum: -> { WhopSDK::PlanType }

      # @!attribute product
      #   The product that this plan belongs to.
      #
      #   @return [WhopSDK::Models::Plan::Product, nil]
      required :product, -> { WhopSDK::Plan::Product }, nil?: true

      # @!attribute purchase_url
      #   The direct link to purchase the product.
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   This is the release method the business uses to sell this plan.
      #
      #   @return [Symbol, WhopSDK::Models::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::ReleaseMethod }

      # @!attribute renewal_price
      #   The recurring price charged every billing_period in the plan's base_currency
      #   (e.g., 9.99 for $9.99/period). Zero for one-time plans.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   The number of payments required before pausing the subscription.
      #
      #   @return [Integer, nil]
      required :split_pay_required_payments, Integer, nil?: true

      # @!attribute stock
      #   The number of units available for purchase. Only displayed to authorized actors
      #
      #   @return [Integer, nil]
      required :stock, Integer, nil?: true

      # @!attribute tax_type
      #   The tax type for the plan.
      #
      #   @return [Symbol, WhopSDK::Models::TaxType]
      required :tax_type, enum: -> { WhopSDK::TaxType }

      # @!attribute title
      #   The title of the plan. This will be visible on the product page to customers.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days added before a renewal plan.
      #
      #   @return [Integer, nil]
      required :trial_period_days, Integer, nil?: true

      # @!attribute unlimited_stock
      #   When true, the plan has unlimited stock (stock field is ignored). When false,
      #   purchases are limited by the stock field.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute visibility
      #   Shows or hides the plan from public/business view.
      #
      #   @return [Symbol, WhopSDK::Models::Visibility]
      required :visibility, enum: -> { WhopSDK::Visibility }

      # @!method initialize(id:, billing_period:, collect_tax:, company:, created_at:, currency:, custom_fields:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, tax_type:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Plan}
      #   for more details.
      #
      #   A plan for an product. Plans define the core parameters that define a checkout
      #   and payment on whop. Use plans to create different ways to price your products
      #   (Eg renewal / one_time)
      #
      #   @param id [String] The internal ID of the plan.
      #
      #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans).
      #
      #   @param collect_tax [Boolean] Whether or not the plan collects tax.
      #
      #   @param company [WhopSDK::Models::Plan::Company, nil] The company for the plan.
      #
      #   @param created_at [Time] When the plan was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
      #
      #   @param custom_fields [Array<WhopSDK::Models::Plan::CustomField>] The custom fields for the plan.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The number of days until the membership expires (for expiration-based plans). Fo
      #
      #   @param initial_price [Float] The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param invoice [WhopSDK::Models::Plan::Invoice, nil] The invoice associated with this plan.
      #
      #   @param member_count [Integer, nil] The number of members for the plan.
      #
      #   @param payment_method_configuration [WhopSDK::Models::Plan::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan, if any.
      #
      #   @param plan_type [Symbol, WhopSDK::Models::PlanType] Indicates if the plan is a one time payment or recurring.
      #
      #   @param product [WhopSDK::Models::Plan::Product, nil] The product that this plan belongs to.
      #
      #   @param purchase_url [String] The direct link to purchase the product.
      #
      #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod] This is the release method the business uses to sell this plan.
      #
      #   @param renewal_price [Float] The recurring price charged every billing_period in the plan's base_currency (e.
      #
      #   @param split_pay_required_payments [Integer, nil] The number of payments required before pausing the subscription.
      #
      #   @param stock [Integer, nil] The number of units available for purchase. Only displayed to authorized actors
      #
      #   @param tax_type [Symbol, WhopSDK::Models::TaxType] The tax type for the plan.
      #
      #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      #   @param unlimited_stock [Boolean] When true, the plan has unlimited stock (stock field is ignored). When false, pu
      #
      #   @param updated_at [Time] When the plan was last updated.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility] Shows or hides the plan from public/business view.

      # @see WhopSDK::Models::Plan#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company for the plan.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param title [String] The title of the company.
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the given custom field
        #
        #   @return [String]
        required :id, String

        # @!attribute field_type
        #   What type of input field to use.
        #
        #   @return [Symbol, :text]
        required :field_type, const: :text

        # @!attribute name
        #   The title/header of the custom field.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   How the custom field should be ordered when rendered on the checkout page.
        #
        #   @return [Integer, nil]
        required :order, Integer, nil?: true

        # @!attribute placeholder
        #   An example response displayed in the input field.
        #
        #   @return [String, nil]
        required :placeholder, String, nil?: true

        # @!attribute required
        #   Whether or not the custom field is required.
        #
        #   @return [Boolean]
        required :required, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id:, name:, order:, placeholder:, required:, field_type: :text)
        #   An object representing a custom field for a plan.
        #
        #   @param id [String] The internal ID of the given custom field
        #
        #   @param name [String] The title/header of the custom field.
        #
        #   @param order [Integer, nil] How the custom field should be ordered when rendered on the checkout page.
        #
        #   @param placeholder [String, nil] An example response displayed in the input field.
        #
        #   @param required [Boolean] Whether or not the custom field is required.
        #
        #   @param field_type [Symbol, :text] What type of input field to use.
      end

      # @see WhopSDK::Models::Plan#invoice
      class Invoice < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the invoice.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The invoice associated with this plan.
        #
        #   @param id [String] The ID of the invoice.
      end

      # @see WhopSDK::Models::Plan#payment_method_configuration
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
        #   {WhopSDK::Models::Plan::PaymentMethodConfiguration} for more details.
        #
        #   The explicit payment method configuration for the plan, if any.
        #
        #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly disabled. Only applie
        #
        #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] An array of payment method identifiers that are explicitly enabled. This means t
        #
        #   @param include_platform_defaults [Boolean] Whether Whop's platform default payment method enablement settings are included
      end

      # @see WhopSDK::Models::Plan#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The product that this plan belongs to.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end
    end
  end
end
