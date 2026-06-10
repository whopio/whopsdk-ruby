# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#update
    class PlanUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @return [Boolean, nil]
      optional :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute billing_period
      #   The number of days between recurring charges. For example, 30 for monthly or 365
      #   for yearly.
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
      #   @return [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil]
      optional :custom_fields,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::PlanUpdateParams::CustomField] },
               nil?: true

      # @!attribute description
      #   A text description of the plan displayed to customers on the product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute expiration_days
      #   The number of days until the membership expires and access is revoked.
      #
      #   @return [Integer, nil]
      optional :expiration_days, Integer, nil?: true

      # @!attribute image
      #   An image displayed on the product page to represent this plan.
      #
      #   @return [WhopSDK::Models::PlanUpdateParams::Image, nil]
      optional :image, -> { WhopSDK::PlanUpdateParams::Image }, nil?: true

      # @!attribute initial_price
      #   The amount charged on the first purchase, in the plan's currency (e.g., 10.43
      #   for $10.43).
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

      # @!attribute metadata
      #   Custom key-value pairs to store on the plan. Included in webhook payloads for
      #   payment and membership events.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute offer_cancel_discount
      #   Whether to offer a retention discount when a customer attempts to cancel.
      #
      #   @return [Boolean, nil]
      optional :offer_cancel_discount, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute override_tax_type
      #   Override the default tax classification for this specific plan.
      #
      #   @return [String, nil]
      optional :override_tax_type, String

      # @!attribute payment_method_configuration
      #   Explicit payment method configuration for the plan. When not provided, the
      #   company's defaults apply.
      #
      #   @return [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil]
      optional :payment_method_configuration,
               -> { WhopSDK::PlanUpdateParams::PaymentMethodConfiguration },
               nil?: true

      # @!attribute renewal_price
      #   The amount charged each billing period for recurring plans, in the plan's
      #   currency.
      #
      #   @return [Float, nil]
      optional :renewal_price, Float, nil?: true

      # @!attribute stock
      #   The maximum number of units available for purchase. Ignored when unlimited_stock
      #   is true.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute strike_through_initial_price
      #   A comparison price displayed with a strikethrough for the initial price.
      #
      #   @return [Float, nil]
      optional :strike_through_initial_price, Float, nil?: true

      # @!attribute strike_through_renewal_price
      #   A comparison price displayed with a strikethrough for the renewal price.
      #
      #   @return [Float, nil]
      optional :strike_through_renewal_price, Float, nil?: true

      # @!attribute three_ds_level
      #   The 3D Secure behavior for this plan. Send null to inherit the account default.
      #
      #   @return [Symbol, WhopSDK::Models::PlanUpdateParams::ThreeDSLevel, nil]
      optional :three_ds_level, enum: -> { WhopSDK::PlanUpdateParams::ThreeDSLevel }

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
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view.
      #
      #   @return [String, nil]
      optional :visibility, String

      # @!method initialize(id:, adaptive_pricing_enabled: nil, billing_period: nil, checkout_styling: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, legacy_payment_method_controls: nil, metadata: nil, offer_cancel_discount: nil, override_tax_type: nil, payment_method_configuration: nil, renewal_price: nil, stock: nil, strike_through_initial_price: nil, strike_through_renewal_price: nil, three_ds_level: nil, title: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param adaptive_pricing_enabled [Boolean, nil] Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @param billing_period [Integer, nil] The number of days between recurring charges. For example, 30 for monthly or 365
      #
      #   @param checkout_styling [Object, nil] Checkout styling overrides for this plan.
      #
      #   @param currency [String] The three-letter ISO currency code for the plan's pricing. Defaults to USD.
      #
      #   @param custom_fields [Array<WhopSDK::Models::PlanUpdateParams::CustomField>, nil] An array of custom field definitions to collect from customers at checkout. Omit
      #
      #   @param description [String, nil] A text description of the plan displayed to customers on the product page.
      #
      #   @param expiration_days [Integer, nil] The number of days until the membership expires and access is revoked.
      #
      #   @param image [WhopSDK::Models::PlanUpdateParams::Image, nil] An image displayed on the product page to represent this plan.
      #
      #   @param initial_price [Float, nil] The amount charged on the first purchase, in the plan's currency (e.g., 10.43 fo
      #
      #   @param internal_notes [String, nil] Private notes visible only to the business owner. Not shown to customers.
      #
      #   @param legacy_payment_method_controls [Boolean, nil] Whether this plan uses legacy payment method controls.
      #
      #   @param metadata [Object, nil] Custom key-value pairs to store on the plan. Included in webhook payloads for pa
      #
      #   @param offer_cancel_discount [Boolean, nil] Whether to offer a retention discount when a customer attempts to cancel.
      #
      #   @param override_tax_type [String] Override the default tax classification for this specific plan.
      #
      #   @param payment_method_configuration [WhopSDK::Models::PlanUpdateParams::PaymentMethodConfiguration, nil] Explicit payment method configuration for the plan. When not provided, the compa
      #
      #   @param renewal_price [Float, nil] The amount charged each billing period for recurring plans, in the plan's curren
      #
      #   @param stock [Integer, nil] The maximum number of units available for purchase. Ignored when unlimited_stock
      #
      #   @param strike_through_initial_price [Float, nil] A comparison price displayed with a strikethrough for the initial price.
      #
      #   @param strike_through_renewal_price [Float, nil] A comparison price displayed with a strikethrough for the renewal price.
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::PlanUpdateParams::ThreeDSLevel] The 3D Secure behavior for this plan. Send null to inherit the account default.
      #
      #   @param title [String, nil] The display name of the plan shown to customers on the product page.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days before the first charge on a recurring plan.
      #
      #   @param unlimited_stock [Boolean, nil] Whether the plan has unlimited stock. When true, the stock field is ignored.
      #
      #   @param visibility [String] Whether the plan is visible to customers or hidden from public view.
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
        #   @return [Symbol, WhopSDK::Models::PlanUpdateParams::CustomField::FieldType, nil]
        optional :field_type, enum: -> { WhopSDK::PlanUpdateParams::CustomField::FieldType }

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
        #   @param field_type [Symbol, WhopSDK::Models::PlanUpdateParams::CustomField::FieldType] The type of the custom field.
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
        # @see WhopSDK::Models::PlanUpdateParams::CustomField#field_type
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
        #
        #   @return [Array<String>, nil]
        optional :disabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute enabled
        #
        #   @return [Array<String>, nil]
        optional :enabled, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include_platform_defaults
        #
        #   @return [Boolean, nil]
        optional :include_platform_defaults, WhopSDK::Internal::Type::Boolean

        # @!method initialize(disabled: nil, enabled: nil, include_platform_defaults: nil)
        #   Explicit payment method configuration for the plan. When not provided, the
        #   company's defaults apply.
        #
        #   @param disabled [Array<String>]
        #   @param enabled [Array<String>]
        #   @param include_platform_defaults [Boolean]
      end

      # The 3D Secure behavior for this plan. Send null to inherit the account default.
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
