# frozen_string_literal: true

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the plan.
      #
      #   @return [String]
      required :id, String

      # @!attribute billing_period
      #   The number of days between each recurring charge. Null for one-time plans. For
      #   example, 30 for monthly or 365 for annual billing.
      #
      #   @return [Integer, nil]
      required :billing_period, Integer, nil?: true

      # @!attribute collect_tax
      #   Whether tax is collected on purchases of this plan, based on the company's tax
      #   configuration.
      #
      #   @return [Boolean]
      required :collect_tax, WhopSDK::Internal::Type::Boolean

      # @!attribute company
      #   The company that sells this plan. Null for standalone invoice plans not linked
      #   to a company.
      #
      #   @return [WhopSDK::Models::Plan::Company, nil]
      required :company, -> { WhopSDK::Plan::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the plan was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
      #   amounts on the plan are denominated in this currency.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute custom_fields
      #   Custom input fields displayed on the checkout form that collect additional
      #   information from the buyer.
      #
      #   @return [Array<WhopSDK::Models::Plan::CustomField>]
      required :custom_fields, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField] }

      # @!attribute description
      #   A text description of the plan visible to customers. Maximum 500 characters.
      #   Null if no description is set.
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
      #   Private notes visible only to the company owner and team members. Not shown to
      #   customers. Null if no notes have been added.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice this plan was generated for. Null if the plan was not created for a
      #   specific invoice.
      #
      #   @return [WhopSDK::Models::Plan::Invoice, nil]
      required :invoice, -> { WhopSDK::Plan::Invoice }, nil?: true

      # @!attribute member_count
      #   The number of users who currently hold an active membership through this plan.
      #   Only visible to authorized team members.
      #
      #   @return [Integer, nil]
      required :member_count, Integer, nil?: true

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration specifying which payment methods are
      #   enabled or disabled for this plan. Null if the plan uses default settings.
      #
      #   @return [WhopSDK::Models::Plan::PaymentMethodConfiguration, nil]
      required :payment_method_configuration, -> { WhopSDK::Plan::PaymentMethodConfiguration }, nil?: true

      # @!attribute plan_type
      #   The billing model for this plan: 'renewal' for recurring subscriptions or
      #   'one_time' for single payments.
      #
      #   @return [Symbol, WhopSDK::Models::PlanType]
      required :plan_type, enum: -> { WhopSDK::PlanType }

      # @!attribute product
      #   The product that this plan belongs to. Null for standalone one-off purchases not
      #   linked to a product.
      #
      #   @return [WhopSDK::Models::Plan::Product, nil]
      required :product, -> { WhopSDK::Plan::Product }, nil?: true

      # @!attribute purchase_url
      #   The full URL where customers can purchase this plan directly, bypassing the
      #   product page.
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   The method used to sell this plan: 'buy_now' for immediate purchase or
      #   'waitlist' for waitlist-based access.
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
      #   The total number of installment payments required before the subscription
      #   pauses. Null if split pay is not configured. Must be greater than 1.
      #
      #   @return [Integer, nil]
      required :split_pay_required_payments, Integer, nil?: true

      # @!attribute stock
      #   The number of units available for purchase. Only visible to authorized team
      #   members. Null if the requester lacks permission.
      #
      #   @return [Integer, nil]
      required :stock, Integer, nil?: true

      # @!attribute tax_type
      #   How tax is handled for this plan: 'inclusive' (tax included in price),
      #   'exclusive' (tax added at checkout), or 'unspecified' (tax not configured).
      #
      #   @return [Symbol, WhopSDK::Models::TaxType]
      required :tax_type, enum: -> { WhopSDK::TaxType }

      # @!attribute title
      #   The display name of the plan shown to customers on the product page and at
      #   checkout. Maximum 30 characters. Null if no title has been set.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days before the first charge on a renewal plan. Null if
      #   no trial is configured or the current user has already used a trial for this
      #   plan.
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
      #   The datetime the plan was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute visibility
      #   Controls whether the plan is visible to customers. When set to 'hidden', the
      #   plan is only accessible via direct link.
      #
      #   @return [Symbol, WhopSDK::Models::Visibility]
      required :visibility, enum: -> { WhopSDK::Visibility }

      # @!method initialize(id:, billing_period:, collect_tax:, company:, created_at:, currency:, custom_fields:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, tax_type:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Plan}
      #   for more details.
      #
      #   A plan defines pricing and billing terms for a checkout. Plans can optionally
      #   belong to a product, where they represent different pricing options such as
      #   one-time payments, recurring subscriptions, or free trials.
      #
      #   @param id [String] The unique identifier for the plan.
      #
      #   @param billing_period [Integer, nil] The number of days between each recurring charge. Null for one-time plans. For e
      #
      #   @param collect_tax [Boolean] Whether tax is collected on purchases of this plan, based on the company's tax c
      #
      #   @param company [WhopSDK::Models::Plan::Company, nil] The company that sells this plan. Null for standalone invoice plans not linked t
      #
      #   @param created_at [Time] The datetime the plan was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
      #
      #   @param custom_fields [Array<WhopSDK::Models::Plan::CustomField>] Custom input fields displayed on the checkout form that collect additional infor
      #
      #   @param description [String, nil] A text description of the plan visible to customers. Maximum 500 characters. Nul
      #
      #   @param expiration_days [Integer, nil] The number of days until the membership expires (for expiration-based plans). Fo
      #
      #   @param initial_price [Float] The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
      #
      #   @param internal_notes [String, nil] Private notes visible only to the company owner and team members. Not shown to c
      #
      #   @param invoice [WhopSDK::Models::Plan::Invoice, nil] The invoice this plan was generated for. Null if the plan was not created for a
      #
      #   @param member_count [Integer, nil] The number of users who currently hold an active membership through this plan. O
      #
      #   @param payment_method_configuration [WhopSDK::Models::Plan::PaymentMethodConfiguration, nil] The explicit payment method configuration specifying which payment methods are e
      #
      #   @param plan_type [Symbol, WhopSDK::Models::PlanType] The billing model for this plan: 'renewal' for recurring subscriptions or 'one_t
      #
      #   @param product [WhopSDK::Models::Plan::Product, nil] The product that this plan belongs to. Null for standalone one-off purchases not
      #
      #   @param purchase_url [String] The full URL where customers can purchase this plan directly, bypassing the prod
      #
      #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod] The method used to sell this plan: 'buy_now' for immediate purchase or 'waitlist
      #
      #   @param renewal_price [Float] The recurring price charged every billing_period in the plan's base_currency (e.
      #
      #   @param split_pay_required_payments [Integer, nil] The total number of installment payments required before the subscription pauses
      #
      #   @param stock [Integer, nil] The number of units available for purchase. Only visible to authorized team memb
      #
      #   @param tax_type [Symbol, WhopSDK::Models::TaxType] How tax is handled for this plan: 'inclusive' (tax included in price), 'exclusiv
      #
      #   @param title [String, nil] The display name of the plan shown to customers on the product page and at check
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a renewal plan. Null if
      #
      #   @param unlimited_stock [Boolean] When true, the plan has unlimited stock (stock field is ignored). When false, pu
      #
      #   @param updated_at [Time] The datetime the plan was last updated.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility] Controls whether the plan is visible to customers. When set to 'hidden', the pla

      # @see WhopSDK::Models::Plan#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that sells this plan. Null for standalone invoice plans not linked
        #   to a company.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the custom field.
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
        #   @param id [String] The unique identifier for the custom field.
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
        #   The unique identifier for the invoice.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The invoice this plan was generated for. Null if the plan was not created for a
        #   specific invoice.
        #
        #   @param id [String] The unique identifier for the invoice.
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
        #   The explicit payment method configuration specifying which payment methods are
        #   enabled or disabled for this plan. Null if the plan uses default settings.
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
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Plan::Product} for more details.
        #
        #   The product that this plan belongs to. Null for standalone one-off purchases not
        #   linked to a product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end
    end
  end
end
