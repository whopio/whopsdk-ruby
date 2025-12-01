# typed: strong

module WhopSDK
  module Resources
    class PromoCodes
      # Create a new promo code for a product or plan
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
        # The amount off (% or flat amount) for the promo.
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

      # Retrieves a promo code by ID
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
        # The ID of the promo code to retrieve
        id,
        request_options: {}
      )
      end

      # Lists promo codes for a company
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
        # The ID of the company to list promo codes for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter promo codes by plan ID(s)
        plan_ids: nil,
        # Filter promo codes by product ID(s)
        product_ids: nil,
        # Statuses for promo codes
        status: nil,
        request_options: {}
      )
      end

      # Archive a promo code, preventing further use
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
        # The internal ID of the promo code to archive.
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
