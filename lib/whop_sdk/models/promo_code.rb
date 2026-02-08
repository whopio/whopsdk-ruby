# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#create
    class PromoCode < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the promo code.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_off
      #   The discount amount. Interpretation depends on promo_type: if 'percentage', this
      #   is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
      #   off (e.g., 10.00 means $10.00 off).
      #
      #   @return [Float]
      required :amount_off, Float

      # @!attribute churned_users_only
      #   Restricts promo use to only users who have churned from the company before.
      #
      #   @return [Boolean]
      required :churned_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute code
      #   The specific code used to apply the promo at checkout.
      #
      #   @return [String, nil]
      required :code, String, nil?: true

      # @!attribute company
      #   The company for the promo code.
      #
      #   @return [WhopSDK::Models::PromoCode::Company]
      required :company, -> { WhopSDK::PromoCode::Company }

      # @!attribute created_at
      #   The datetime the promo code was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The monetary currency of the promo code.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute duration
      #   The duration setting for the promo code
      #
      #   @return [Symbol, WhopSDK::Models::PromoDuration, nil]
      required :duration, enum: -> { WhopSDK::PromoDuration }, nil?: true

      # @!attribute existing_memberships_only
      #   Restricts promo use to only be applied to already purchased memberships.
      #
      #   @return [Boolean]
      required :existing_memberships_only, WhopSDK::Internal::Type::Boolean

      # @!attribute expires_at
      #   The date/time of when the promo expires.
      #
      #   @return [Time, nil]
      required :expires_at, Time, nil?: true

      # @!attribute new_users_only
      #   Restricts promo use to only users who have never purchased from the company
      #   before.
      #
      #   @return [Boolean]
      required :new_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute one_per_customer
      #   Restricts promo use to only be applied once per customer.
      #
      #   @return [Boolean]
      required :one_per_customer, WhopSDK::Internal::Type::Boolean

      # @!attribute product
      #   The product this promo code applies to
      #
      #   @return [WhopSDK::Models::PromoCode::Product, nil]
      required :product, -> { WhopSDK::PromoCode::Product }, nil?: true

      # @!attribute promo_duration_months
      #   The number of months the promo is applied for.
      #
      #   @return [Integer, nil]
      required :promo_duration_months, Integer, nil?: true

      # @!attribute promo_type
      #   The type (% or flat amount) of the promo.
      #
      #   @return [Symbol, WhopSDK::Models::PromoType]
      required :promo_type, enum: -> { WhopSDK::PromoType }

      # @!attribute status
      #   Indicates if the promo code is live or disabled.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeStatus]
      required :status, enum: -> { WhopSDK::PromoCodeStatus }

      # @!attribute stock
      #   The quantity limit on the number of uses.
      #
      #   @return [Integer]
      required :stock, Integer

      # @!attribute unlimited_stock
      #   Whether or not the promo code has unlimited stock.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute uses
      #   The amount of times the promo codes has been used.
      #
      #   @return [Integer]
      required :uses, Integer

      # @!method initialize(id:, amount_off:, churned_users_only:, code:, company:, created_at:, currency:, duration:, existing_memberships_only:, expires_at:, new_users_only:, one_per_customer:, product:, promo_duration_months:, promo_type:, status:, stock:, unlimited_stock:, uses:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PromoCode} for more details.
      #
      #   A promo code applies a discount to a plan during checkout. Promo codes can be
      #   percentage-based or fixed-amount, and can have usage limits and expiration
      #   dates.
      #
      #   @param id [String] The unique identifier for the promo code.
      #
      #   @param amount_off [Float] The discount amount. Interpretation depends on promo_type: if 'percentage', this
      #
      #   @param churned_users_only [Boolean] Restricts promo use to only users who have churned from the company before.
      #
      #   @param code [String, nil] The specific code used to apply the promo at checkout.
      #
      #   @param company [WhopSDK::Models::PromoCode::Company] The company for the promo code.
      #
      #   @param created_at [Time] The datetime the promo code was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The monetary currency of the promo code.
      #
      #   @param duration [Symbol, WhopSDK::Models::PromoDuration, nil] The duration setting for the promo code
      #
      #   @param existing_memberships_only [Boolean] Restricts promo use to only be applied to already purchased memberships.
      #
      #   @param expires_at [Time, nil] The date/time of when the promo expires.
      #
      #   @param new_users_only [Boolean] Restricts promo use to only users who have never purchased from the company befo
      #
      #   @param one_per_customer [Boolean] Restricts promo use to only be applied once per customer.
      #
      #   @param product [WhopSDK::Models::PromoCode::Product, nil] The product this promo code applies to
      #
      #   @param promo_duration_months [Integer, nil] The number of months the promo is applied for.
      #
      #   @param promo_type [Symbol, WhopSDK::Models::PromoType] The type (% or flat amount) of the promo.
      #
      #   @param status [Symbol, WhopSDK::Models::PromoCodeStatus] Indicates if the promo code is live or disabled.
      #
      #   @param stock [Integer] The quantity limit on the number of uses.
      #
      #   @param unlimited_stock [Boolean] Whether or not the promo code has unlimited stock.
      #
      #   @param uses [Integer] The amount of times the promo codes has been used.

      # @see WhopSDK::Models::PromoCode#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company for the promo code.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::PromoCode#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The product this promo code applies to
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end
    end
  end
end
