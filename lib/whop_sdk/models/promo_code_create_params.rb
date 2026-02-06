# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#create
    class PromoCodeCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount_off
      #   The discount amount. Interpretation depends on promo_type: if 'percentage', this
      #   is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
      #   off (e.g., 10.00 means $10.00 off).
      #
      #   @return [Float]
      required :amount_off, Float

      # @!attribute base_currency
      #   The monetary currency of the promo code.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :base_currency, enum: -> { WhopSDK::Currency }

      # @!attribute code
      #   The specific code used to apply the promo at checkout.
      #
      #   @return [String]
      required :code, String

      # @!attribute company_id
      #   The id of the company to create the promo code for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute new_users_only
      #   Restricts promo use to only users who have never purchased from the company
      #   before.
      #
      #   @return [Boolean]
      required :new_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute promo_duration_months
      #   The number of months this promo code is applied and valid for.
      #
      #   @return [Integer]
      required :promo_duration_months, Integer

      # @!attribute promo_type
      #   The type (% or flat amount) of the promo.
      #
      #   @return [Symbol, WhopSDK::Models::PromoType]
      required :promo_type, enum: -> { WhopSDK::PromoType }

      # @!attribute churned_users_only
      #   Restricts promo use to only users who have churned from the company before.
      #
      #   @return [Boolean, nil]
      optional :churned_users_only, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute existing_memberships_only
      #   Whether this promo code is for existing memberships only (cancelations)
      #
      #   @return [Boolean, nil]
      optional :existing_memberships_only, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute expires_at
      #   The date/time of when the promo expires.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute one_per_customer
      #   Restricts promo use to only be applied once per customer.
      #
      #   @return [Boolean, nil]
      optional :one_per_customer, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute plan_ids
      #   The IDs of the plans that the promo code applies to. If product_id is provided,
      #   it will only apply to plans attached to that product
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_id
      #   The product to lock the promo code to, if any. If provided will filter out any
      #   plan ids not attached to this product
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute stock
      #   The quantity limit on the number of uses.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute unlimited_stock
      #   Whether or not the promo code should have unlimited stock.
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(amount_off:, base_currency:, code:, company_id:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PromoCodeCreateParams} for more details.
      #
      #   @param amount_off [Float] The discount amount. Interpretation depends on promo_type: if 'percentage', this
      #
      #   @param base_currency [Symbol, WhopSDK::Models::Currency] The monetary currency of the promo code.
      #
      #   @param code [String] The specific code used to apply the promo at checkout.
      #
      #   @param company_id [String] The id of the company to create the promo code for.
      #
      #   @param new_users_only [Boolean] Restricts promo use to only users who have never purchased from the company befo
      #
      #   @param promo_duration_months [Integer] The number of months this promo code is applied and valid for.
      #
      #   @param promo_type [Symbol, WhopSDK::Models::PromoType] The type (% or flat amount) of the promo.
      #
      #   @param churned_users_only [Boolean, nil] Restricts promo use to only users who have churned from the company before.
      #
      #   @param existing_memberships_only [Boolean, nil] Whether this promo code is for existing memberships only (cancelations)
      #
      #   @param expires_at [Time, nil] The date/time of when the promo expires.
      #
      #   @param one_per_customer [Boolean, nil] Restricts promo use to only be applied once per customer.
      #
      #   @param plan_ids [Array<String>, nil] The IDs of the plans that the promo code applies to. If product_id is provided,
      #
      #   @param product_id [String, nil] The product to lock the promo code to, if any. If provided will filter out any p
      #
      #   @param stock [Integer, nil] The quantity limit on the number of uses.
      #
      #   @param unlimited_stock [Boolean, nil] Whether or not the promo code should have unlimited stock.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
