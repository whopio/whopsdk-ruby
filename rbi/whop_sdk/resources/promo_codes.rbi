# typed: strong

module WhopSDK
  module Resources
    # Promo codes
    class PromoCodes
      # Create a new promo code that applies a discount at checkout. Can be scoped to
      # specific products or plans.
      #
      # Required permissions:
      #
      # - `promo_code:create`
      # - `access_pass:basic:read`
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
        ).returns(WhopSDK::PromoCode)
      end
      def create(
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

      # Retrieves the details of an existing promo code.
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::PromoCode)
      end
      def retrieve(
        # The unique identifier of the promo code.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of promo codes belonging to a company, with optional
      # filtering by product, plan, and status.
      #
      # Required permissions:
      #
      # - `promo_code:basic:read`
      # - `access_pass:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          status: T.nilable(WhopSDK::PromoCodeStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PromoCodeListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list promo codes for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return promo codes created after this timestamp.
        created_after: nil,
        # Only return promo codes created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter to only promo codes scoped to these plan identifiers.
        plan_ids: nil,
        # Filter to only promo codes scoped to these product identifiers.
        product_ids: nil,
        # Statuses for promo codes
        status: nil,
        request_options: {}
      )
      end

      # Archive a promo code, preventing it from being used in future checkouts.
      # Existing memberships are not affected.
      #
      # Required permissions:
      #
      # - `promo_code:delete`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the promo code to archive.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
