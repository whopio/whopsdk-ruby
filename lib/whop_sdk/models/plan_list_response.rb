# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#list
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Plan ID, prefixed `plan_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @return [WhopSDK::Models::PlanListResponse::Account, nil]
      required :account, -> { WhopSDK::Models::PlanListResponse::Account }, nil?: true

      # @!attribute adaptive_pricing_enabled
      #   Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      #   processor compatibility or feature flags.
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   Number of days between recurring charges, such as 30 for monthly or 365 for
      #   annual. `null` for one-time plans.
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

      # @!attribute cancel_discount_intervals
      #   Billing intervals the cancellation discount applies to (`0` forever, `1` first
      #   payment, or a month count). `null` when none is offered or the actor lacks the
      #   `plan:basic:read` scope.
      #
      #   @return [Float, nil]
      required :cancel_discount_intervals, Float, nil?: true

      # @!attribute cancel_discount_percentage
      #   Cancellation discount as a whole-number percentage. `null` when none is offered
      #   or the actor lacks the `plan:basic:read` scope.
      #
      #   @return [Float, nil]
      required :cancel_discount_percentage, Float, nil?: true

      # @!attribute checkout_styling
      #   Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      #   `border_style`); `null` inherits the account default.
      #
      #   @return [Object, nil]
      required :checkout_styling, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute created_at
      #   When the plan was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Three-letter ISO currency code for this plan's prices.
      #
      #   @return [String]
      required :currency, String

      # @!attribute custom_fields
      #
      #   @return [Array<WhopSDK::Models::PlanListResponse::CustomField>]
      required :custom_fields,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PlanListResponse::CustomField] }

      # @!attribute description
      #   Customer-visible plan description. Maximum 1000 characters. `null` if no
      #   description is set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   Access duration in days for expiration-based plans, such as 365 for a one-year
      #   pass. `null` for plans without an expiration.
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute formatted_price
      #   Human-readable price for display (currency + interval), e.g. "$10 / month".
      #
      #   @return [String]
      required :formatted_price, String

      # @!attribute image
      #   Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      #   image is set.
      #
      #   @return [Object, nil]
      required :image, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute initial_price
      #   Initial purchase price in plan currency.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes not shown to customers. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   Active memberships through this plan. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan. Included in webhook payloads for
      #   payment and membership events. Maximum 50 keys, 100 characters per key, 500
      #   characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
      #   set, override the product's checkout call to action for this plan.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute offer_cancel_discount
      #   Whether a cancellation discount is offered. `null` unless the actor has the
      #   `plan:basic:read` scope on the plan's account.
      #
      #   @return [Boolean, nil]
      required :offer_cancel_discount, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute payment_method_configuration
      #   Payment method configuration (`enabled`, `disabled`,
      #   `include_platform_defaults`); `null` when plan uses default settings.
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   Billing model for this plan.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListResponse::PlanType]
      required :plan_type, enum: -> { WhopSDK::Models::PlanListResponse::PlanType }

      # @!attribute product
      #   Product this plan belongs to; `null` for standalone plans.
      #
      #   @return [Object, nil]
      required :product, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute purchase_url
      #   URL where customers can purchase this plan directly.
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   Sales method for this plan.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListResponse::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::Models::PlanListResponse::ReleaseMethod }

      # @!attribute renewal_price
      #   Recurring price charged every billing period.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   Installment payments required before the subscription pauses. Must be greater
      #   than 1. `null` if split pay is not configured.
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   Units available for purchase. `null` unless the actor has the `plan:basic:read`
      #   scope on the plan's account.
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute strike_through_initial_price
      #   Original initial price shown with a strikethrough, in the plan's currency.
      #   `null` when no strikethrough is set.
      #
      #   @return [Float, nil]
      required :strike_through_initial_price, Float, nil?: true

      # @!attribute strike_through_renewal_price
      #   Original renewal price shown with a strikethrough, in the plan's currency.
      #   `null` when no strikethrough is set.
      #
      #   @return [Float, nil]
      required :strike_through_renewal_price, Float, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this plan; `null` inherits the account default.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListResponse::ThreeDSLevel, nil]
      required :three_ds_level, enum: -> { WhopSDK::Models::PlanListResponse::ThreeDSLevel }, nil?: true

      # @!attribute title
      #   Plan display name shown to customers. Maximum 30 characters. `null` if no title
      #   has been set.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   Free trial days before the first renewal charge. `null` if no trial is
      #   configured or the user has already used a trial for this plan.
      #
      #   @return [Float, nil]
      required :trial_period_days, Float, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      #   waitlist plans always report `true`.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Controls where this plan can be seen. When `hidden`, the plan is reachable only
      #   by its direct link.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListResponse::Visibility]
      required :visibility, enum: -> { WhopSDK::Models::PlanListResponse::Visibility }

      # @!method initialize(id:, account:, adaptive_pricing_enabled:, billing_period:, cancel_discount_intervals:, cancel_discount_percentage:, checkout_styling:, created_at:, currency:, custom_fields:, description:, expiration_days:, formatted_price:, image:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, offer_cancel_discount:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, strike_through_initial_price:, strike_through_renewal_price:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanListResponse} for more details.
      #
      #   @param id [String] Plan ID, prefixed `plan_`.
      #
      #   @param account [WhopSDK::Models::PlanListResponse::Account, nil] Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      #
      #   @param billing_period [Float, nil] Number of days between recurring charges, such as 30 for monthly or 365 for annu
      #
      #   @param cancel_discount_intervals [Float, nil] Billing intervals the cancellation discount applies to (`0` forever, `1` first p
      #
      #   @param cancel_discount_percentage [Float, nil] Cancellation discount as a whole-number percentage. `null` when none is offered
      #
      #   @param checkout_styling [Object, nil] Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp.
      #
      #   @param currency [String] Three-letter ISO currency code for this plan's prices.
      #
      #   @param custom_fields [Array<WhopSDK::Models::PlanListResponse::CustomField>]
      #
      #   @param description [String, nil] Customer-visible plan description. Maximum 1000 characters. `null` if no descrip
      #
      #   @param expiration_days [Float, nil] Access duration in days for expiration-based plans, such as 365 for a one-year p
      #
      #   @param formatted_price [String] Human-readable price for display (currency + interval), e.g. "$10 / month".
      #
      #   @param image [Object, nil] Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      #
      #   @param initial_price [Float] Initial purchase price in plan currency.
      #
      #   @param internal_notes [String, nil] Private notes not shown to customers. `null` unless the actor has the `plan:basi
      #
      #   @param invoice [Object, nil] Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @param member_count [Float, nil] Active memberships through this plan. `null` unless the actor has the `plan:basi
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan. Included in webhook payloads for paym
      #
      #   @param offer_cancel_discount [Boolean, nil] Whether a cancellation discount is offered. `null` unless the actor has the `pla
      #
      #   @param payment_method_configuration [Object, nil] Payment method configuration (`enabled`, `disabled`, `include_platform_defaults`
      #
      #   @param plan_type [Symbol, WhopSDK::Models::PlanListResponse::PlanType] Billing model for this plan.
      #
      #   @param product [Object, nil] Product this plan belongs to; `null` for standalone plans.
      #
      #   @param purchase_url [String] URL where customers can purchase this plan directly.
      #
      #   @param release_method [Symbol, WhopSDK::Models::PlanListResponse::ReleaseMethod] Sales method for this plan.
      #
      #   @param renewal_price [Float] Recurring price charged every billing period.
      #
      #   @param split_pay_required_payments [Float, nil] Installment payments required before the subscription pauses. Must be greater th
      #
      #   @param stock [Float, nil] Units available for purchase. `null` unless the actor has the `plan:basic:read`
      #
      #   @param strike_through_initial_price [Float, nil] Original initial price shown with a strikethrough, in the plan's currency. `null
      #
      #   @param strike_through_renewal_price [Float, nil] Original renewal price shown with a strikethrough, in the plan's currency. `null
      #
      #   @param three_ds_level [Symbol, WhopSDK::Models::PlanListResponse::ThreeDSLevel, nil] 3D Secure behavior for this plan; `null` inherits the account default.
      #
      #   @param title [String, nil] Plan display name shown to customers. Maximum 30 characters. `null` if no title
      #
      #   @param trial_period_days [Float, nil] Free trial days before the first renewal charge. `null` if no trial is configure
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @param visibility [Symbol, WhopSDK::Models::PlanListResponse::Visibility] Controls where this plan can be seen. When `hidden`, the plan is reachable only

      # @see WhopSDK::Models::PlanListResponse#account
      class Account < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Account that sells this plan; `null` for standalone invoice plans.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param title [String] Account display name.
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Custom field ID, prefixed `field_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute field_type
        #   Custom field input type.
        #
        #   @return [Symbol, WhopSDK::Models::PlanListResponse::CustomField::FieldType]
        required :field_type, enum: -> { WhopSDK::Models::PlanListResponse::CustomField::FieldType }

        # @!attribute name
        #   Field label shown to customer at checkout.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   Field position on checkout form.
        #
        #   @return [Float]
        required :order, Float

        # @!attribute placeholder
        #   Placeholder text shown in the empty field. `null` if none is set.
        #
        #   @return [String, nil]
        required :placeholder, String, nil?: true

        # @!attribute required
        #   Whether the customer must complete this field to check out.
        #
        #   @return [Boolean]
        required :required, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id:, field_type:, name:, order:, placeholder:, required:)
        #   Custom input fields collected on the checkout form.
        #
        #   @param id [String] Custom field ID, prefixed `field_`.
        #
        #   @param field_type [Symbol, WhopSDK::Models::PlanListResponse::CustomField::FieldType] Custom field input type.
        #
        #   @param name [String] Field label shown to customer at checkout.
        #
        #   @param order [Float] Field position on checkout form.
        #
        #   @param placeholder [String, nil] Placeholder text shown in the empty field. `null` if none is set.
        #
        #   @param required [Boolean] Whether the customer must complete this field to check out.

        # Custom field input type.
        #
        # @see WhopSDK::Models::PlanListResponse::CustomField#field_type
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TEXT = :text

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Billing model for this plan.
      #
      # @see WhopSDK::Models::PlanListResponse#plan_type
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        RENEWAL = :renewal
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sales method for this plan.
      #
      # @see WhopSDK::Models::PlanListResponse#release_method
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        BUY_NOW = :buy_now
        WAITLIST = :waitlist

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # 3D Secure behavior for this plan; `null` inherits the account default.
      #
      # @see WhopSDK::Models::PlanListResponse#three_ds_level
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        MANDATE_CHALLENGE = :mandate_challenge
        FRICTIONLESS = :frictionless

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
      #
      # @see WhopSDK::Models::PlanListResponse#visibility
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        VISIBLE = :visible
        HIDDEN = :hidden
        ARCHIVED = :archived
        QUICK_LINK = :quick_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
