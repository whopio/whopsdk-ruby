# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#update
    class PlanUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute billing_period
      #   The interval in days at which the plan charges (renewal plans).
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
      #   @return [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil]
      optional :custom_fields,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::PlanUpdateParams::CustomField] },
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

      # @!attribute image
      #   An image for the plan. This will be visible on the product page to customers.
      #
      #   @return [WhopSDK::Models::PlanUpdateParams::Image, nil]
      optional :image, -> { WhopSDK::PlanUpdateParams::Image }, nil?: true

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

      # @!attribute legacy_payment_method_controls
      #   Whether this plan uses legacy payment method controls
      #
      #   @return [Boolean, nil]
      optional :legacy_payment_method_controls, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute offer_cancel_discount
      #   Whether or not to offer a discount to cancel a subscription.
      #
      #   @return [Boolean, nil]
      optional :offer_cancel_discount, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute override_tax_type
      #   Whether or not the tax is included in a plan's price (or if it hasn't been set
      #   up)
      #
      #   @return [Symbol, WhopSDK::Models::TaxType, nil]
      optional :override_tax_type, enum: -> { WhopSDK::TaxType }, nil?: true

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the plan. If sent as null, the
      #   custom configuration will be removed.
      #
      #   @return [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::PlanUpdateParams::PaymentMethodConfiguration },
               nil?: true

      # @!attribute renewal_price
      #   The amount the customer is charged every billing period. Provided as a number in
      #   the specified currency. Eg: 10.43 for $10.43 USD.
      #
      #   @return [Float, nil]
      optional :renewal_price, Float, nil?: true

      # @!attribute stock
      #   The number of units available for purchase.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute strike_through_initial_price
      #   The price to display with a strikethrough for the initial price. Provided as a
      #   number in the specified currency. Eg: 19.99 for $19.99
      #
      #   @return [Float, nil]
      optional :strike_through_initial_price, Float, nil?: true

      # @!attribute strike_through_renewal_price
      #   The price to display with a strikethrough for the renewal price. Provided as a
      #   number in the specified currency. Eg: 19.99 for $19.99
      #
      #   @return [Float, nil]
      optional :strike_through_renewal_price, Float, nil?: true

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

      # @!method initialize(billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanUpdateParams} for more details.
      #
      #   @param billing_period [Integer, nil] The interval in days at which the plan charges (renewal plans).
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] An array of custom field objects.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The number of days until the membership expires (for expiration-based plans). Fo
      #
      #   @param image [WhopSDK::Models::PlanUpdateParams::Image, nil] An image for the plan. This will be visible on the product page to customers.
      #
      #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Provided as a number in the sp
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls
      #
      #   @param offer_cancel_discount [Boolean, nil] Whether or not to offer a discount to cancel a subscription.
      #
      #   @param override_tax_type [Symbol, WhopSDK::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      #   @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] The explicit payment method configuration for the plan. If sent as null, the cus
      #
      #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Provided as a number in
      #
      #   @param stock [Integer, nil] The number of units available for purchase.
      #
      #   @param strike_through_initial_price [Float, nil] The price to display with a strikethrough for the initial price. Provided as a n
      #
      #   @param strike_through_renewal_price [Float, nil] The price to display with a strikethrough for the renewal price. Provided as a n
      #
      #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      #   @param unlimited_stock [Boolean, nil] When true, the plan has unlimited stock (stock field is ignored). When false, pu
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
        #   An image for the plan. This will be visible on the product page to customers.
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
        #   {WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration} for more
        #   details.
        #
        #   The explicit payment method configuration for the plan. If sent as null, the
        #   custom configuration will be removed.
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
