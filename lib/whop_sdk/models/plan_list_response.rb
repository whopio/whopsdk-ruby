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
      #   @return [Object, nil]
      required :account, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   Recurring billing interval in days, such as 30 for monthly or 365 for annual.
      #   `null` for one-time plans.
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

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

      # @!attribute description
      #   Customer-visible plan description.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   Access duration in days for expiration-based plans.
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute initial_price
      #   Initial purchase price in plan currency.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes visible only to authorized team members.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   Active memberships through this plan, when visible to the requester.
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_method_configuration
      #   Payment method configuration (`enabled`, `disabled`,
      #   `include_platform_defaults`); `null` when plan uses default settings.
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   Billing model for this plan: `renewal` (recurring) or `one_time` (single
      #   payment).
      #
      #   @return [String]
      required :plan_type, String

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
      #   Sales method for this plan, such as `buy_now` or `waitlist`.
      #
      #   @return [String]
      required :release_method, String

      # @!attribute renewal_price
      #   Recurring price charged every billing period.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   Installment payments required before the subscription pauses.
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   Units available for purchase, when visible to the requester.
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute three_ds_level
      #   3D Secure behavior for this plan; `null` inherits account default.
      #
      #   @return [String, nil]
      required :three_ds_level, String, nil?: true

      # @!attribute title
      #   Plan display name shown to customers.
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
      #   Whether the plan has unlimited stock.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view.
      #
      #   @return [String]
      required :visibility, String

      # @!method initialize(id:, account:, adaptive_pricing_enabled:, billing_period:, created_at:, currency:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanListResponse} for more details.
      #
      #   @param id [String] Plan ID, prefixed `plan_`.
      #
      #   @param account [Object, nil] Account that sells this plan; `null` for standalone invoice plans.
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing.
      #
      #   @param billing_period [Float, nil] Recurring billing interval in days, such as 30 for monthly or 365 for annual. `n
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp.
      #
      #   @param currency [String] Three-letter ISO currency code for this plan's prices.
      #
      #   @param description [String, nil] Customer-visible plan description.
      #
      #   @param expiration_days [Float, nil] Access duration in days for expiration-based plans.
      #
      #   @param initial_price [Float] Initial purchase price in plan currency.
      #
      #   @param internal_notes [String, nil] Private notes visible only to authorized team members.
      #
      #   @param invoice [Object, nil] Invoice this plan was generated for; `null` unless created for an invoice.
      #
      #   @param member_count [Float, nil] Active memberships through this plan, when visible to the requester.
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan.
      #
      #   @param payment_method_configuration [Object, nil] Payment method configuration (`enabled`, `disabled`, `include_platform_defaults`
      #
      #   @param plan_type [String] Billing model for this plan: `renewal` (recurring) or `one_time` (single payment
      #
      #   @param product [Object, nil] Product this plan belongs to; `null` for standalone plans.
      #
      #   @param purchase_url [String] URL where customers can purchase this plan directly.
      #
      #   @param release_method [String] Sales method for this plan, such as `buy_now` or `waitlist`.
      #
      #   @param renewal_price [Float] Recurring price charged every billing period.
      #
      #   @param split_pay_required_payments [Float, nil] Installment payments required before the subscription pauses.
      #
      #   @param stock [Float, nil] Units available for purchase, when visible to the requester.
      #
      #   @param three_ds_level [String, nil] 3D Secure behavior for this plan; `null` inherits account default.
      #
      #   @param title [String, nil] Plan display name shown to customers.
      #
      #   @param trial_period_days [Float, nil] Free trial days before the first renewal charge. `null` if no trial is configure
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock.
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp.
      #
      #   @param visibility [String] Whether the plan is visible to customers or hidden from public view.
    end
  end
end
