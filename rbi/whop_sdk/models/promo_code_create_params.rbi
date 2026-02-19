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

      # The discount amount. When promo_type is percentage, this is the percent off
      # (e.g., 20 for 20% off). When promo_type is flat_amount, this is the currency
      # amount off (e.g., 10.00 for $10.00 off).
      sig { returns(Float) }
      attr_accessor :amount_off

      # The three-letter ISO currency code for the promo code discount.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :base_currency

      # The alphanumeric code customers enter at checkout to apply the discount.
      sig { returns(String) }
      attr_accessor :code

      # The unique identifier of the company to create this promo code for.
      sig { returns(String) }
      attr_accessor :company_id

      # Whether to restrict this promo code to only users who have never purchased from
      # the company before.
      sig { returns(T::Boolean) }
      attr_accessor :new_users_only

      # The number of billing months the discount remains active. For example, 3 means
      # the discount applies to the first 3 billing cycles.
      sig { returns(Integer) }
      attr_accessor :promo_duration_months

      # The discount type, either percentage or flat_amount.
      sig { returns(WhopSDK::PromoType::OrSymbol) }
      attr_accessor :promo_type

      # Whether to restrict this promo code to only users who have previously churned
      # from the company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :churned_users_only

      # Whether this promo code can only be applied to existing memberships, such as for
      # cancellation retention offers.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :existing_memberships_only

      # The datetime when the promo code expires and can no longer be used. Null means
      # it never expires.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Whether each customer can only use this promo code once.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :one_per_customer

      # The identifiers of plans this promo code applies to. When product_id is also
      # provided, only plans attached to that product are included.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # The identifier of the product to scope this promo code to. When provided, the
      # promo code only applies to plans attached to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The maximum number of times this promo code can be used. Ignored when
      # unlimited_stock is true.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # Whether the promo code can be used an unlimited number of times.
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
        # The discount amount. When promo_type is percentage, this is the percent off
        # (e.g., 20 for 20% off). When promo_type is flat_amount, this is the currency
        # amount off (e.g., 10.00 for $10.00 off).
        amount_off:,
        # The three-letter ISO currency code for the promo code discount.
        base_currency:,
        # The alphanumeric code customers enter at checkout to apply the discount.
        code:,
        # The unique identifier of the company to create this promo code for.
        company_id:,
        # Whether to restrict this promo code to only users who have never purchased from
        # the company before.
        new_users_only:,
        # The number of billing months the discount remains active. For example, 3 means
        # the discount applies to the first 3 billing cycles.
        promo_duration_months:,
        # The discount type, either percentage or flat_amount.
        promo_type:,
        # Whether to restrict this promo code to only users who have previously churned
        # from the company.
        churned_users_only: nil,
        # Whether this promo code can only be applied to existing memberships, such as for
        # cancellation retention offers.
        existing_memberships_only: nil,
        # The datetime when the promo code expires and can no longer be used. Null means
        # it never expires.
        expires_at: nil,
        # Whether each customer can only use this promo code once.
        one_per_customer: nil,
        # The identifiers of plans this promo code applies to. When product_id is also
        # provided, only plans attached to that product are included.
        plan_ids: nil,
        # The identifier of the product to scope this promo code to. When provided, the
        # promo code only applies to plans attached to this product.
        product_id: nil,
        # The maximum number of times this promo code can be used. Ignored when
        # unlimited_stock is true.
        stock: nil,
        # Whether the promo code can be used an unlimited number of times.
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
