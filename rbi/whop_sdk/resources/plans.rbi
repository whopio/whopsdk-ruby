# typed: strong

module WhopSDK
  module Resources
    class Plans
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      #
      # Required permissions:
      #
      # - `plan:create`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      sig do
        params(
          company_id: String,
          product_id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
          release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def create(
        # The unique identifier of the company to create this plan for.
        company_id:,
        # The unique identifier of the product to attach this plan to.
        product_id:,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked. Used for
        # expiration-based plans.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase. For one-time plans, this is the full
        # price. For recurring plans, this is an additional charge on top of the renewal
        # price. Provided in the plan's currency (e.g., 10.43 for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        payment_method_configuration: nil,
        # The type of plan that can be attached to a product
        plan_type: nil,
        # The methods of how a plan can be released.
        release_method: nil,
        # The amount charged each billing period for recurring plans. Provided in the
        # plan's currency (e.g., 10.43 for $10.43).
        renewal_price: nil,
        # The number of installment payments required before the subscription pauses.
        split_pay_required_payments: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        # Defaults to true.
        unlimited_stock: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing plan.
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def retrieve(
        # The unique identifier of the plan.
        id,
        request_options: {}
      )
      end

      # Update a plan's pricing, billing interval, visibility, stock, and other
      # settings.
      #
      # Required permissions:
      #
      # - `plan:update`
      # - `access_pass:basic:read`
      # - `plan:basic:read`
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def update(
        # The unique identifier of the plan to update.
        id,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked. For
        # example, 365 for one-year access.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase. Provided in the plan's currency (e.g.,
        # 10.43 for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Whether to offer a retention discount when a customer attempts to cancel.
        offer_cancel_discount: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. Sending null removes any
        # custom configuration.
        payment_method_configuration: nil,
        # The amount charged each billing period for recurring plans. Provided in the
        # plan's currency (e.g., 10.43 for $10.43).
        renewal_price: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # A comparison price displayed with a strikethrough for the initial price.
        # Provided in the plan's currency (e.g., 19.99 for $19.99).
        strike_through_initial_price: nil,
        # A comparison price displayed with a strikethrough for the renewal price.
        # Provided in the plan's currency (e.g., 19.99 for $19.99).
        strike_through_renewal_price: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of plans belonging to a company, with optional
      # filtering by visibility, type, release method, and product.
      #
      # Required permissions:
      #
      # - `plan:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::PlanListParams::Order::OrSymbol),
          plan_types: T.nilable(T::Array[WhopSDK::PlanType::OrSymbol]),
          product_ids: T.nilable(T::Array[String]),
          release_methods:
            T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol]),
          visibilities:
            T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PlanListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list plans for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return plans created after this timestamp.
        created_after: nil,
        # Only return plans created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ways a relation of Plans can be ordered
        order: nil,
        # Filter to only plans matching these billing types.
        plan_types: nil,
        # Filter to only plans belonging to these product identifiers.
        product_ids: nil,
        # Filter to only plans matching these release methods.
        release_methods: nil,
        # Filter to only plans matching these visibility states.
        visibilities: nil,
        request_options: {}
      )
      end

      # Permanently delete a plan from a product. Existing memberships on this plan will
      # not be affected.
      #
      # Required permissions:
      #
      # - `plan:delete`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the plan to delete.
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
