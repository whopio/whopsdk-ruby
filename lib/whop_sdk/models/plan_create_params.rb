# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#create
    class PlanCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create this plan for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute product_id
      #   The unique identifier of the product to attach this plan to.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute billing_period
      #   The number of days between recurring charges. For example, 30 for monthly or 365
      #   for yearly.
      #
      #   @return [Integer, nil]
      optional :billing_period, Integer, nil?: true

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      optional :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute custom_fields
      #   An array of custom field definitions to collect from customers at checkout.
      #
      #   @return [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil]
      optional :custom_fields,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::PlanCreateParams::CustomField] },
               nil?: true

      # @!attribute description
      #   A text description of the plan displayed to customers on the product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute expiration_days
      #   The number of days until the membership expires and access is revoked. Used for
      #   expiration-based plans.
      #
      #   @return [Integer, nil]
      optional :expiration_days, Integer, nil?: true

      # @!attribute image
      #   An image displayed on the product page to represent this plan.
      #
      #   @return [WhopSDK::Models::PlanCreateParams::Image, nil]
      optional :image, -> { WhopSDK::PlanCreateParams::Image }, nil?: true

      # @!attribute initial_price
      #   The amount charged on the first purchase. For one-time plans, this is the full
      #   price. For recurring plans, this is an additional charge on top of the renewal
      #   price. Provided in the plan's currency (e.g., 10.43 for $10.43).
      #
      #   @return [Float, nil]
      optional :initial_price, Float, nil?: true

      # @!attribute internal_notes
      #   Private notes visible only to the business owner. Not shown to customers.
      #
      #   @return [String, nil]
      optional :internal_notes, String, nil?: true

      # @!attribute legacy_payment_method_controls
      #   Whether this plan uses legacy payment method controls.
      #
      #   @return [Boolean, nil]
      optional :legacy_payment_method_controls, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute override_tax_type
      #   Whether or not the tax is included in a plan's price (or if it hasn't been set
      #   up)
      #
      #   @return [Symbol, WhopSDK::Models::TaxType, nil]
      optional :override_tax_type, enum: -> { WhopSDK::TaxType }, nil?: true

      # @!attribute payment_method_configuration
      #   Explicit payment method configuration for the plan. When not provided, the
      #   company's defaults apply.
      #
      #   @return [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::PlanCreateParams::PaymentMethodConfiguration },
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
      #   The amount charged each billing period for recurring plans. Provided in the
      #   plan's currency (e.g., 10.43 for $10.43).
      #
      #   @return [Float, nil]
      optional :renewal_price, Float, nil?: true

      # @!attribute split_pay_required_payments
      #   The number of installment payments required before the subscription pauses.
      #
      #   @return [Integer, nil]
      optional :split_pay_required_payments, Integer, nil?: true

      # @!attribute stock
      #   The maximum number of units available for purchase. Ignored when unlimited_stock
      #   is true.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute title
      #   The display name of the plan shown to customers on the product page.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days before the first charge on a recurring plan.
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock. When true, the stock field is ignored.
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, WhopSDK::Models::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

      # @!method initialize(company_id:, product_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create this plan for.
      #
      #   @param product_id [String] The unique identifier of the product to attach this plan to.
      #
      #   @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout.
      #
      #   @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      #   @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked. Used for
      #
      #   @param image [WhopSDK::Models::PlanCreateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      #   @param initial_price [Float, nil] The amount charged on the first purchase. For one-time plans, this is the full p
      #
      #   @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      #   @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      #   @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      #   @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the compa
      #
      #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
      #
      #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
      #
      #   @param renewal_price [Float, nil] The amount charged each billing period for recurring plans. Provided in the plan
      #
      #   @param split_pay_required_payments [Integer, nil] The number of installment payments required before the subscription pauses.
      #
      #   @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      #   @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      #   @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored. Def
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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

      class Image < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   An image displayed on the product page to represent this plan.
        #
        #   @param id [String] The ID of an existing file object.
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
        #   {WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration} for more
        #   details.
        #
        #   Explicit payment method configuration for the plan. When not provided, the
        #   company's defaults apply.
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
