# typed: strong

module WhopSDK
  module Models
    class PromoCodeCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PromoCodeCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The discount amount. Interpretation depends on promo_type: if 'percentage', this
      # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
      # off (e.g., 10.00 means $10.00 off).
      sig { returns(Float) }
      attr_accessor :amount_off

      # The monetary currency of the promo code.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :base_currency

      # The specific code used to apply the promo at checkout.
      sig { returns(String) }
      attr_accessor :code

      # The id of the company to create the promo code for.
      sig { returns(String) }
      attr_accessor :company_id

      # Restricts promo use to only users who have never purchased from the company
      # before.
      sig { returns(T::Boolean) }
      attr_accessor :new_users_only

      # The number of months this promo code is applied and valid for.
      sig { returns(Integer) }
      attr_accessor :promo_duration_months

      # The type (% or flat amount) of the promo.
      sig { returns(WhopSDK::PromoType::OrSymbol) }
      attr_accessor :promo_type

      # Restricts promo use to only users who have churned from the company before.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :churned_users_only

      # Whether this promo code is for existing memberships only (cancelations)
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :existing_memberships_only

      # The date/time of when the promo expires.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Restricts promo use to only be applied once per customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :one_per_customer

      # The IDs of the plans that the promo code applies to. If product_id is provided,
      # it will only apply to plans attached to that product
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # The product to lock the promo code to, if any. If provided will filter out any
      # plan ids not attached to this product
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The quantity limit on the number of uses.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # Whether or not the promo code should have unlimited stock.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unlimited_stock

      sig do
        params(
          amount_off: Float,
          base_currency: WhopSDK::Currency::OrSymbol,
          code: String,
          company_id: String,
          new_users_only: T::Boolean,
          promo_duration_months: Integer,
          promo_type: WhopSDK::PromoType::OrSymbol,
          churned_users_only: T.nilable(T::Boolean),
          existing_memberships_only: T.nilable(T::Boolean),
          expires_at: T.nilable(Time),
          one_per_customer: T.nilable(T::Boolean),
          plan_ids: T.nilable(T::Array[String]),
          product_id: T.nilable(String),
          stock: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The discount amount. Interpretation depends on promo_type: if 'percentage', this
        # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
        # off (e.g., 10.00 means $10.00 off).
        amount_off:,
        # The monetary currency of the promo code.
        base_currency:,
        # The specific code used to apply the promo at checkout.
        code:,
        # The id of the company to create the promo code for.
        company_id:,
        # Restricts promo use to only users who have never purchased from the company
        # before.
        new_users_only:,
        # The number of months this promo code is applied and valid for.
        promo_duration_months:,
        # The type (% or flat amount) of the promo.
        promo_type:,
        # Restricts promo use to only users who have churned from the company before.
        churned_users_only: nil,
        # Whether this promo code is for existing memberships only (cancelations)
        existing_memberships_only: nil,
        # The date/time of when the promo expires.
        expires_at: nil,
        # Restricts promo use to only be applied once per customer.
        one_per_customer: nil,
        # The IDs of the plans that the promo code applies to. If product_id is provided,
        # it will only apply to plans attached to that product
        plan_ids: nil,
        # The product to lock the promo code to, if any. If provided will filter out any
        # plan ids not attached to this product
        product_id: nil,
        # The quantity limit on the number of uses.
        stock: nil,
        # Whether or not the promo code should have unlimited stock.
        unlimited_stock: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount_off: Float,
            base_currency: WhopSDK::Currency::OrSymbol,
            code: String,
            company_id: String,
            new_users_only: T::Boolean,
            promo_duration_months: Integer,
            promo_type: WhopSDK::PromoType::OrSymbol,
            churned_users_only: T.nilable(T::Boolean),
            existing_memberships_only: T.nilable(T::Boolean),
            expires_at: T.nilable(Time),
            one_per_customer: T.nilable(T::Boolean),
            plan_ids: T.nilable(T::Array[String]),
            product_id: T.nilable(String),
            stock: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
