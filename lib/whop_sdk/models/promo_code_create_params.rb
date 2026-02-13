# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#create
    class PromoCodeCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount_off
      #   The discount amount. When promo_type is percentage, this is the percent off
      #   (e.g., 20 for 20% off). When promo_type is flat_amount, this is the currency
      #   amount off (e.g., 10.00 for $10.00 off).
      #
      #   @return [Float]
      required :amount_off, Float

      # @!attribute base_currency
      #   The three-letter ISO currency code for the promo code discount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :base_currency, enum: -> { WhopSDK::Currency }

      # @!attribute code
      #   The alphanumeric code customers enter at checkout to apply the discount.
      #
      #   @return [String]
      required :code, String

      # @!attribute company_id
      #   The unique identifier of the company to create this promo code for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute new_users_only
      #   Whether to restrict this promo code to only users who have never purchased from
      #   the company before.
      #
      #   @return [Boolean]
      required :new_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute promo_duration_months
      #   The number of billing months the discount remains active. For example, 3 means
      #   the discount applies to the first 3 billing cycles.
      #
      #   @return [Integer]
      required :promo_duration_months, Integer

      # @!attribute promo_type
      #   The discount type, either percentage or flat_amount.
      #
      #   @return [Symbol, WhopSDK::Models::PromoType]
      required :promo_type, enum: -> { WhopSDK::PromoType }

      # @!attribute churned_users_only
      #   Whether to restrict this promo code to only users who have previously churned
      #   from the company.
      #
      #   @return [Boolean, nil]
      optional :churned_users_only, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute existing_memberships_only
      #   Whether this promo code can only be applied to existing memberships, such as for
      #   cancellation retention offers.
      #
      #   @return [Boolean, nil]
      optional :existing_memberships_only, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute expires_at
      #   The datetime when the promo code expires and can no longer be used. Null means
      #   it never expires.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute one_per_customer
      #   Whether each customer can only use this promo code once.
      #
      #   @return [Boolean, nil]
      optional :one_per_customer, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute plan_ids
      #   The identifiers of plans this promo code applies to. When product_id is also
      #   provided, only plans attached to that product are included.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_id
      #   The identifier of the product to scope this promo code to. When provided, the
      #   promo code only applies to plans attached to this product.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute stock
      #   The maximum number of times this promo code can be used. Ignored when
      #   unlimited_stock is true.
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute unlimited_stock
      #   Whether the promo code can be used an unlimited number of times.
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(amount_off:, base_currency:, code:, company_id:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PromoCodeCreateParams} for more details.
      #
      #   @param amount_off [Float] The discount amount. When promo_type is percentage, this is the percent off (e.g
      #
      #   @param base_currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the promo code discount.
      #
      #   @param code [String] The alphanumeric code customers enter at checkout to apply the discount.
      #
      #   @param company_id [String] The unique identifier of the company to create this promo code for.
      #
      #   @param new_users_only [Boolean] Whether to restrict this promo code to only users who have never purchased from
      #
      #   @param promo_duration_months [Integer] The number of billing months the discount remains active. For example, 3 means t
      #
      #   @param promo_type [Symbol, WhopSDK::Models::PromoType] The discount type, either percentage or flat_amount.
      #
      #   @param churned_users_only [Boolean, nil] Whether to restrict this promo code to only users who have previously churned fr
      #
      #   @param existing_memberships_only [Boolean, nil] Whether this promo code can only be applied to existing memberships, such as for
      #
      #   @param expires_at [Time, nil] The datetime when the promo code expires and can no longer be used. Null means i
      #
      #   @param one_per_customer [Boolean, nil] Whether each customer can only use this promo code once.
      #
      #   @param plan_ids [Array<String>, nil] The identifiers of plans this promo code applies to. When product_id is also pro
      #
      #   @param product_id [String, nil] The identifier of the product to scope this promo code to. When provided, the pr
      #
      #   @param stock [Integer, nil] The maximum number of times this promo code can be used. Ignored when
      #   unlimited\_
      #
      #   @param unlimited_stock [Boolean, nil] Whether the promo code can be used an unlimited number of times.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
