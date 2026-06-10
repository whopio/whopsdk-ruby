# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#list
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the plan, which will look like plan\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute adaptive_pricing_enabled
      #   Whether this plan accepts local currency payments via adaptive pricing
      #
      #   @return [Boolean]
      required :adaptive_pricing_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_period
      #   The number of days between recurring charges. Null for one-time plans
      #
      #   @return [Float, nil]
      required :billing_period, Float, nil?: true

      # @!attribute company
      #   The company that sells this plan, an object with an id and title. Null for
      #   standalone invoice plans
      #
      #   @return [Object, nil]
      required :company, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute created_at
      #   When the plan was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   The three-letter ISO currency code all prices on this plan are denominated in
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   A text description of the plan visible to customers
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   The number of days until the membership expires, for expiration-based plans
      #
      #   @return [Float, nil]
      required :expiration_days, Float, nil?: true

      # @!attribute initial_price
      #   The initial purchase price in the plan's currency
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   Private notes visible only to authorized team members
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice this plan was generated for, an object with an id. Null unless the
      #   plan was created for an invoice
      #
      #   @return [Object, nil]
      required :invoice, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute member_count
      #   The number of active memberships on this plan. Only visible to authorized team
      #   members
      #
      #   @return [Float, nil]
      required :member_count, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs stored on the plan
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_method_configuration
      #   The explicit payment method configuration for the plan, an object with enabled,
      #   disabled and include_platform_defaults. Null if the plan uses default settings
      #
      #   @return [Object, nil]
      required :payment_method_configuration, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute plan_type
      #   The billing model for this plan: 'renewal' for recurring subscriptions or
      #   'one_time' for single payments
      #
      #   @return [String]
      required :plan_type, String

      # @!attribute product
      #   The product this plan belongs to, an object with an id and title. Null for
      #   standalone plans
      #
      #   @return [Object, nil]
      required :product, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute purchase_url
      #   The full URL where customers can purchase this plan directly
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      #
      #   @return [String]
      required :release_method, String

      # @!attribute renewal_price
      #   The recurring price charged every billing period in the plan's currency
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute split_pay_required_payments
      #   The number of installment payments required before the subscription pauses
      #
      #   @return [Float, nil]
      required :split_pay_required_payments, Float, nil?: true

      # @!attribute stock
      #   The number of units available for purchase. Only visible to authorized team
      #   members
      #
      #   @return [Float, nil]
      required :stock, Float, nil?: true

      # @!attribute three_ds_level
      #   The 3D Secure behavior for this plan. Null means the plan inherits the account
      #   default
      #
      #   @return [String, nil]
      required :three_ds_level, String, nil?: true

      # @!attribute title
      #   The display name of the plan shown to customers
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days before the first charge on a recurring plan
      #
      #   @return [Float, nil]
      required :trial_period_days, Float, nil?: true

      # @!attribute unlimited_stock
      #   Whether the plan has unlimited stock
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visibility
      #   Whether the plan is visible to customers or hidden from public view
      #
      #   @return [String]
      required :visibility, String

      # @!method initialize(id:, adaptive_pricing_enabled:, billing_period:, company:, created_at:, currency:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, metadata:, payment_method_configuration:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, split_pay_required_payments:, stock:, three_ds_level:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanListResponse} for more details.
      #
      #   @param id [String] The ID of the plan, which will look like plan\_******\*******
      #
      #   @param adaptive_pricing_enabled [Boolean] Whether this plan accepts local currency payments via adaptive pricing
      #
      #   @param billing_period [Float, nil] The number of days between recurring charges. Null for one-time plans
      #
      #   @param company [Object, nil] The company that sells this plan, an object with an id and title. Null for stand
      #
      #   @param created_at [String] When the plan was created, as an ISO 8601 timestamp
      #
      #   @param currency [String] The three-letter ISO currency code all prices on this plan are denominated in
      #
      #   @param description [String, nil] A text description of the plan visible to customers
      #
      #   @param expiration_days [Float, nil] The number of days until the membership expires, for expiration-based plans
      #
      #   @param initial_price [Float] The initial purchase price in the plan's currency
      #
      #   @param internal_notes [String, nil] Private notes visible only to authorized team members
      #
      #   @param invoice [Object, nil] The invoice this plan was generated for, an object with an id. Null unless the p
      #
      #   @param member_count [Float, nil] The number of active memberships on this plan. Only visible to authorized team m
      #
      #   @param metadata [Object, nil] Custom key-value pairs stored on the plan
      #
      #   @param payment_method_configuration [Object, nil] The explicit payment method configuration for the plan, an object with enabled,
      #
      #   @param plan_type [String] The billing model for this plan: 'renewal' for recurring subscriptions or 'one_t
      #
      #   @param product [Object, nil] The product this plan belongs to, an object with an id and title. Null for stand
      #
      #   @param purchase_url [String] The full URL where customers can purchase this plan directly
      #
      #   @param release_method [String] The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      #
      #   @param renewal_price [Float] The recurring price charged every billing period in the plan's currency
      #
      #   @param split_pay_required_payments [Float, nil] The number of installment payments required before the subscription pauses
      #
      #   @param stock [Float, nil] The number of units available for purchase. Only visible to authorized team memb
      #
      #   @param three_ds_level [String, nil] The 3D Secure behavior for this plan. Null means the plan inherits the account d
      #
      #   @param title [String, nil] The display name of the plan shown to customers
      #
      #   @param trial_period_days [Float, nil] The number of free trial days before the first charge on a recurring plan
      #
      #   @param unlimited_stock [Boolean] Whether the plan has unlimited stock
      #
      #   @param updated_at [String] When the plan was last updated, as an ISO 8601 timestamp
      #
      #   @param visibility [String] Whether the plan is visible to customers or hidden from public view
    end
  end
end
