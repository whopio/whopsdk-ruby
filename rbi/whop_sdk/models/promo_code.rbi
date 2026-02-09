# typed: strong

module WhopSDK
  module Models
    class PromoCode < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::PromoCode, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the promo code.
      sig { returns(String) }
      attr_accessor :id

      # The discount amount. Interpretation depends on promo_type: if 'percentage', this
      # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
      # off (e.g., 10.00 means $10.00 off).
      sig { returns(Float) }
      attr_accessor :amount_off

      # Restricts promo use to only users who have churned from the company before.
      sig { returns(T::Boolean) }
      attr_accessor :churned_users_only

      # The specific code used to apply the promo at checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # The company for the promo code.
      sig { returns(WhopSDK::PromoCode::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::PromoCode::Company::OrHash).void }
      attr_writer :company

      # The datetime the promo code was created.
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

      # The product this promo code applies to
      sig { returns(T.nilable(WhopSDK::PromoCode::Product)) }
      attr_reader :product

      sig do
        params(product: T.nilable(WhopSDK::PromoCode::Product::OrHash)).void
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

      # A promo code applies a discount to a plan during checkout. Promo codes can be
      # percentage-based or fixed-amount, and can have usage limits and expiration
      # dates.
      sig do
        params(
          id: String,
          amount_off: Float,
          churned_users_only: T::Boolean,
          code: T.nilable(String),
          company: WhopSDK::PromoCode::Company::OrHash,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          duration: T.nilable(WhopSDK::PromoDuration::OrSymbol),
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(Time),
          new_users_only: T::Boolean,
          one_per_customer: T::Boolean,
          product: T.nilable(WhopSDK::PromoCode::Product::OrHash),
          promo_duration_months: T.nilable(Integer),
          promo_type: WhopSDK::PromoType::OrSymbol,
          status: WhopSDK::PromoCodeStatus::OrSymbol,
          stock: Integer,
          unlimited_stock: T::Boolean,
          uses: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the promo code.
        id:,
        # The discount amount. Interpretation depends on promo_type: if 'percentage', this
        # is the percentage (e.g., 20 means 20% off); if 'flat_amount', this is dollars
        # off (e.g., 10.00 means $10.00 off).
        amount_off:,
        # Restricts promo use to only users who have churned from the company before.
        churned_users_only:,
        # The specific code used to apply the promo at checkout.
        code:,
        # The company for the promo code.
        company:,
        # The datetime the promo code was created.
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
        # The product this promo code applies to
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
            company: WhopSDK::PromoCode::Company,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            duration: T.nilable(WhopSDK::PromoDuration::TaggedSymbol),
            existing_memberships_only: T::Boolean,
            expires_at: T.nilable(Time),
            new_users_only: T::Boolean,
            one_per_customer: T::Boolean,
            product: T.nilable(WhopSDK::PromoCode::Product),
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

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PromoCode::Company, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The written name of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company for the promo code.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The written name of the company.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PromoCode::Product, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The product this promo code applies to
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
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
