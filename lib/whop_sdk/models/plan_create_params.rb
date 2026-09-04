# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#create
    class PlanCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The unique identifier of the account to create this plan for. Required when
      #   authenticating as a user; an account API key supplies its own account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @return [Boolean, nil]
      optional :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute billing_period
      #   Recurring billing interval in days, such as 30 for monthly or 365 for annual.
      #
      #   @return [Integer, nil]
      optional :billing_period, Integer, nil?: true

      # @!attribute checkout_styling
      #   Checkout styling overrides for this plan.
      #
      #   @return [Object, nil]
      optional :checkout_styling, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute currency
      #   The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute custom_fields
      #   An array of custom field definitions to collect from customers at checkout.
      #   Omitting this field clears existing custom fields.
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
      #   Access duration in days before the membership expires.
      #
      #   @return [Integer, nil]
      optional :expiration_days, Integer, nil?: true

      # @!attribute image
      #   An image displayed on the product page to represent this plan.
      #
      #   @return [WhopSDK::Models::PlanCreateParams::Image, nil]
      optional :image, -> { WhopSDK::PlanCreateParams::Image }, nil?: true

      # @!attribute initial_price
      #   Initial amount charged in the plan's currency, e.g. 10.43 for $10.43. A paid
      #   fiat plan charges at least 1.00 in its currency; use 0 for free.
      #
      #   @return [Float, nil]
      optional :initial_price, Float, nil?: true

      # @!attribute internal_notes
      #   Private notes visible only to the account owner. Not shown to customers.
      #
      #   @return [String, nil]
      optional :internal_notes, String, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs to store on the plan. Included in webhook payloads for
      #   payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
      #   string value. The reserved keys `custom_cta` (a checkout call-to-action button
      #   label — one of the product custom CTA values, e.g. `subscribe`, `get_offer`) and
      #   `custom_cta_url` (a URL the button links to; web or `tel:`) override the
      #   product's call to action for this plan and are validated on save.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute override_tax_type
      #   Override the default tax classification for this specific plan.
      #
      #   @return [String, nil]
      optional :override_tax_type, String

      # @!attribute payment_method_configuration
      #   Explicit payment method configuration for the plan. When not provided, the
      #   account's defaults apply.
      #
      #   @return [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::PlanCreateParams::PaymentMethodConfiguration },
               nil?: true

      # @!attribute plan_type
      #   Plan billing type, such as `one_time` or `renewal`.
      #
      #   @return [String, nil]
      optional :plan_type, String

      # @!attribute product_id
      #   The unique identifier of the product to attach this plan to.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute release_method
      #   Sales method for this plan.
      #
      #   @return [String, nil]
      optional :release_method, String

      # @!attribute renewal_price
      #   The amount charged each billing period for recurring plans, in the plan's
      #   currency. A paid fiat plan charges at least 1.00 in its currency.
      #
      #   @return [Float, nil]
      optional :renewal_price, Float, nil?: true

      # @!attribute split_pay_required_payments
      #   Installment payments required before the subscription pauses.
      #
      #   @return [Integer, nil]
      optional :split_pay_required_payments, Integer, nil?: true

      # @!attribute stock
      #   The maximum number of units available for purchase. Ignored when unlimited_stock
      #   is true.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this plan. Send `null` to inherit the account default.
      #
      #   @return [Symbol, WhopSDK::Models::PlanCreateParams::ThreeDSLevel, nil]
      optional :three_ds_level, enum: -> { WhopSDK::PlanCreateParams::ThreeDSLevel }, nil?: true

      # @!attribute title
      #   The display name of the plan shown to customers on the product page.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute trial_period_days
      #   Free trial duration before the first recurring charge.
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view.
      #
      #   @return [String, nil]
      optional :visibility, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id: nil, adaptive_pricing_enabled: nil, billing_period: nil, checkout_styling: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, metadata: nil, override_tax_type: nil, payment_method_configuration: nil, plan_type: nil, product_id: nil, release_method: nil, renewal_price: nil, split_pay_required_payments: nil, stock: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanCreateParams} for more details.
      #
      #   @param account_id [String] The unique identifier of the account to create this plan for. Required when auth
      #
      #   @param adaptive_pricing_enabled [Boolean, nil] Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @param billing_period [Integer, nil] Recurring billing interval in days, such as 30 for monthly or 365 for annual.
      #
      #   @param checkout_styling [Object, nil] Checkout styling overrides for this plan.
      #
      #   @param currency [String] The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      #
      #   @param custom_fields [Array<WhopSDK::Models::PlanCreateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout. Omit
      #
      #   @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      #   @param expiration_days [Integer, nil] Access duration in days before the membership expires.
      #
      #   @param image [WhopSDK::Models::PlanCreateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      #   @param initial_price [Float, nil] Initial amount charged in the plan's currency, e.g. 10.43 for $10.43. A paid fia
      #
      #   @param internal_notes [String, nil] Private notes visible only to the account owner. Not shown to customers.
      #
      #   @param metadata [Object, nil] Custom key-value pairs to store on the plan. Included in webhook payloads for pa
      #
      #   @param override_tax_type [String] Override the default tax classification for this specific plan.
      #
      #   @param payment_method_configuration [WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the accou
      #
      #   @param plan_type [String] Plan billing type, such as `one_time` or `renewal`.
      #
      #   @param product_id [String] The unique identifier of the product to attach this plan to.
      #
      #   @param release_method [String] Sales method for this plan.
      #
      #   @param renewal_price [Float, nil] The amount charged each billing period for recurring plans, in the plan's curren
      #
      #   @param split_pay_required_payments [Integer, nil] Installment payments required before the subscription pauses.
      #
      #   @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::PlanCreateParams::ThreeDSLevel, nil] 3D Secure behavior for this plan. Send `null` to inherit the account default.
      #
      #   @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      #   @param trial_period_days [Integer, nil] Free trial duration before the first recurring charge.
      #
      #   @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      #   @param visibility [String] Whether the plan is visible to customers or hidden from public view.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class CustomField < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the custom field (if being updated).
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute field_type
        #   The type of the custom field.
        #
        #   @return [Symbol, WhopSDK::Models::PlanCreateParams::CustomField::FieldType, nil]
        optional :field_type, enum: -> { WhopSDK::PlanCreateParams::CustomField::FieldType }

        # @!attribute name
        #   The name of the custom field.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute order
        #   The order of the field.
        #
        #   @return [Integer, nil]
        optional :order, Integer

        # @!attribute placeholder
        #   An example response displayed in the input field.
        #
        #   @return [String, nil]
        optional :placeholder, String, nil?: true

        # @!attribute required
        #   Whether or not the field is required.
        #
        #   @return [Boolean, nil]
        optional :required, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id: nil, field_type: nil, name: nil, order: nil, placeholder: nil, required: nil)
        #   @param id [String] The ID of the custom field (if being updated).
        #
        #   @param field_type [Symbol, WhopSDK::Models::PlanCreateParams::CustomField::FieldType] The type of the custom field.
        #
        #   @param name [String] The name of the custom field.
        #
        #   @param order [Integer] The order of the field.
        #
        #   @param placeholder [String, nil] An example response displayed in the input field.
        #
        #   @param required [Boolean] Whether or not the field is required.

        # The type of the custom field.
        #
        # @see WhopSDK::Models::PlanCreateParams::CustomField#field_type
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TEXT = :text

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Image < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   An image displayed on the product page to represent this plan.
        #
        #   @param id [String]
        #   @param direct_upload_id [String]
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        # @!attribute disabled
        #   Payment method types explicitly disabled for this plan — the `type` values from
        #   the payment method types catalogue.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
        optional :disabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute enabled
        #   Payment method types explicitly enabled for this plan — the `type` values from
        #   the payment method types catalogue.
        #
        #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
        optional :enabled, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] }

        # @!attribute include_platform_defaults
        #
        #   @return [Boolean, nil]
        optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PlanCreateParams::PaymentMethodConfiguration} for more
        #   details.
        #
        #   Explicit payment method configuration for the plan. When not provided, the
        #   account's defaults apply.
        #
        #   @param disabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly disabled for this plan — the `type` values from
        #
        #   @param enabled [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>] Payment method types explicitly enabled for this plan — the `type` values from t
        #
        #   @param include_platform_defaults [Boolean]
      end

      # 3D Secure behavior for this plan. Send `null` to inherit the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
