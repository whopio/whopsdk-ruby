# typed: strong

module WhopSDK
  module Models
    class PromoCodeListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PromoCodeListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the promo.
      sig { returns(String) }
      attr_accessor :id

      # The amount off (% or flat amount) for the promo.
      sig { returns(Float) }
      attr_accessor :amount_off

      # Restricts promo use to only users who have churned from the company before.
      sig { returns(T::Boolean) }
      attr_accessor :churned_users_only

      # The specific code used to apply the promo at checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # The timestamp of when the promo was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The monetary currency of the promo code.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The duration setting for the promo code
      sig { returns(T.nilable(WhopSDK::PromoDuration::TaggedSymbol)) }
      attr_accessor :duration

      # Restricts promo use to only be applied to already purchased memberships.
      sig { returns(T::Boolean) }
      attr_accessor :existing_memberships_only

      # The date/time of when the promo expires.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Restricts promo use to only users who have never purchased from the company
      # before.
      sig { returns(T::Boolean) }
      attr_accessor :new_users_only

      # Restricts promo use to only be applied once per customer.
      sig { returns(T::Boolean) }
      attr_accessor :one_per_customer

      # The access pass associated with the promo code.
      sig do
        returns(T.nilable(WhopSDK::Models::PromoCodeListResponse::Product))
      end
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::PromoCodeListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The number of months the promo is applied for.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :promo_duration_months

      # The type (% or flat amount) of the promo.
      sig { returns(WhopSDK::PromoType::TaggedSymbol) }
      attr_accessor :promo_type

      # Indicates if the promo code is live or disabled.
      sig { returns(WhopSDK::PromoCodeStatus::TaggedSymbol) }
      attr_accessor :status

      # The quantity limit on the number of uses.
      sig { returns(Integer) }
      attr_accessor :stock

      # Whether or not the promo code has unlimited stock.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # The amount of times the promo codes has been used.
      sig { returns(Integer) }
      attr_accessor :uses

      # An object representing a promo code for a plan.
      sig do
        params(
          id: String,
          amount_off: Float,
          churned_users_only: T::Boolean,
          code: T.nilable(String),
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          duration: T.nilable(WhopSDK::PromoDuration::OrSymbol),
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(Time),
          new_users_only: T::Boolean,
          one_per_customer: T::Boolean,
          product:
            T.nilable(WhopSDK::Models::PromoCodeListResponse::Product::OrHash),
          promo_duration_months: T.nilable(Integer),
          promo_type: WhopSDK::PromoType::OrSymbol,
          status: WhopSDK::PromoCodeStatus::OrSymbol,
          stock: Integer,
          unlimited_stock: T::Boolean,
          uses: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the promo.
        id:,
        # The amount off (% or flat amount) for the promo.
        amount_off:,
        # Restricts promo use to only users who have churned from the company before.
        churned_users_only:,
        # The specific code used to apply the promo at checkout.
        code:,
        # The timestamp of when the promo was created.
        created_at:,
        # The monetary currency of the promo code.
        currency:,
        # The duration setting for the promo code
        duration:,
        # Restricts promo use to only be applied to already purchased memberships.
        existing_memberships_only:,
        # The date/time of when the promo expires.
        expires_at:,
        # Restricts promo use to only users who have never purchased from the company
        # before.
        new_users_only:,
        # Restricts promo use to only be applied once per customer.
        one_per_customer:,
        # The access pass associated with the promo code.
        product:,
        # The number of months the promo is applied for.
        promo_duration_months:,
        # The type (% or flat amount) of the promo.
        promo_type:,
        # Indicates if the promo code is live or disabled.
        status:,
        # The quantity limit on the number of uses.
        stock:,
        # Whether or not the promo code has unlimited stock.
        unlimited_stock:,
        # The amount of times the promo codes has been used.
        uses:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_off: Float,
            churned_users_only: T::Boolean,
            code: T.nilable(String),
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            duration: T.nilable(WhopSDK::PromoDuration::TaggedSymbol),
            existing_memberships_only: T::Boolean,
            expires_at: T.nilable(Time),
            new_users_only: T::Boolean,
            one_per_customer: T::Boolean,
            product: T.nilable(WhopSDK::Models::PromoCodeListResponse::Product),
            promo_duration_months: T.nilable(Integer),
            promo_type: WhopSDK::PromoType::TaggedSymbol,
            status: WhopSDK::PromoCodeStatus::TaggedSymbol,
            stock: Integer,
            unlimited_stock: T::Boolean,
            uses: Integer
          }
        )
      end
      def to_hash
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PromoCodeListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass associated with the promo code.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public product.
          id:,
          # The title of the product. Use for Whop 4.0.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
