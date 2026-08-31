# typed: strong

module WhopSDK
  module Resources
    class PromoCodes
      # Creates a promo code for an account. First-party sessions may attach an
      # affiliate.
      sig do
        params(
          account_id: String,
          amount_off: Float,
          base_currency: WhopSDK::PromoCodeCreateParams::BaseCurrency::OrSymbol,
          code: String,
          new_users_only: T::Boolean,
          promo_duration_months: Integer,
          promo_type: WhopSDK::PromoCodeCreateParams::PromoType::OrSymbol,
          churned_users_only: T::Boolean,
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(String),
          one_per_customer: T::Boolean,
          plan_ids: T::Array[String],
          product_id: T.nilable(String),
          stock: T.nilable(Integer),
          unlimited_stock: T::Boolean,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::PromoCode)
      end
      def create(
        # Body param
        account_id:,
        # Body param
        amount_off:,
        # Body param
        base_currency:,
        # Body param
        code:,
        # Body param
        new_users_only:,
        # Body param
        promo_duration_months:,
        # Body param
        promo_type:,
        # Body param
        churned_users_only: nil,
        # Body param
        existing_memberships_only: nil,
        # Body param
        expires_at: nil,
        # Body param
        one_per_customer: nil,
        # Body param
        plan_ids: nil,
        # Body param
        product_id: nil,
        # Body param
        stock: nil,
        # Body param
        unlimited_stock: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a promo code by ID.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::PromoCode)
      end
      def retrieve(
        # Promo code ID (`promo_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists promo codes for an account with cursor pagination, filters, and sorting.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::PromoCodeListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::PromoCodeListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          status: WhopSDK::PromoCodeListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PromoCodeListResponse]
        )
      end
      def list(
        # Query param: Account whose promo codes are listed (`biz_` tag).
        account_id:,
        # Query param: Cursor to paginate forwards from.
        after: nil,
        # Query param: Cursor to paginate backwards from.
        before: nil,
        # Query param: Only promo codes created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only promo codes created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: Number of promo codes to return from the start of the window.
        first: nil,
        # Query param: Number of promo codes to return from the end of the window.
        last: nil,
        # Query param: Sort field.
        order: nil,
        # Query param: Only promo codes scoped to these plan IDs.
        plan_ids: nil,
        # Query param: Only promo codes scoped to these product IDs.
        product_ids: nil,
        # Query param: Promo-code status. `expired` groups inactive and archived codes.
        status: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Archives a promo code so it cannot be used in future checkouts.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PromoCodeDeleteResponse)
      end
      def delete(
        # Promo code ID (`promo_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
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
