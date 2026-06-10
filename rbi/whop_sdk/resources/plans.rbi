# typed: strong

module WhopSDK
  module Resources
    class Plans
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      sig do
        params(
          product_id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
          company_id: String,
          currency: String,
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          metadata: T.nilable(T.anything),
          override_tax_type: String,
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanCreateParams::PaymentMethodConfiguration::OrHash
            ),
          plan_type: String,
          release_method: String,
          renewal_price: T.nilable(Float),
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          three_ds_level: WhopSDK::PlanCreateParams::ThreeDSLevel::OrSymbol,
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def create(
        # The unique identifier of the product to attach this plan to.
        product_id:,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled: nil,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # Checkout styling overrides for this plan.
        checkout_styling: nil,
        # The unique identifier of the company to create this plan for. Defaults to the
        # caller's company.
        company_id: nil,
        # The three-letter ISO currency code for the plan's pricing. Defaults to USD.
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        # Omitting this field clears existing custom fields.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase, in the plan's currency (e.g., 10.43
        # for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Custom key-value pairs to store on the plan. Included in webhook payloads for
        # payment and membership events.
        metadata: nil,
        # Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        payment_method_configuration: nil,
        # The billing type of the plan, such as one_time or renewal.
        plan_type: nil,
        # The method used to sell this plan (e.g., buy_now, waitlist).
        release_method: nil,
        # The amount charged each billing period for recurring plans, in the plan's
        # currency.
        renewal_price: nil,
        # The number of installment payments required before the subscription pauses.
        split_pay_required_payments: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # The 3D Secure behavior for this plan. Send null to inherit the account default.
        three_ds_level: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing plan.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def retrieve(
        # The unique identifier of the plan, which will look like plan\_******\*******.
        id,
        request_options: {}
      )
      end

      # Update a plan's pricing, billing interval, visibility, stock, and other
      # settings.
      sig do
        params(
          id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
          currency: String,
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(WhopSDK::PlanUpdateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          metadata: T.nilable(T.anything),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: String,
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          three_ds_level: WhopSDK::PlanUpdateParams::ThreeDSLevel::OrSymbol,
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Plan)
      end
      def update(
        # The unique identifier of the plan, which will look like plan\_******\*******.
        id,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled: nil,
        # The number of days between recurring charges. For example, 30 for monthly or 365
        # for yearly.
        billing_period: nil,
        # Checkout styling overrides for this plan.
        checkout_styling: nil,
        # The three-letter ISO currency code for the plan's pricing. Defaults to USD.
        currency: nil,
        # An array of custom field definitions to collect from customers at checkout.
        # Omitting this field clears existing custom fields.
        custom_fields: nil,
        # A text description of the plan displayed to customers on the product page.
        description: nil,
        # The number of days until the membership expires and access is revoked.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # The amount charged on the first purchase, in the plan's currency (e.g., 10.43
        # for $10.43).
        initial_price: nil,
        # Private notes visible only to the business owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Custom key-value pairs to store on the plan. Included in webhook payloads for
        # payment and membership events.
        metadata: nil,
        # Whether to offer a retention discount when a customer attempts to cancel.
        offer_cancel_discount: nil,
        # Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # company's defaults apply.
        payment_method_configuration: nil,
        # The amount charged each billing period for recurring plans, in the plan's
        # currency.
        renewal_price: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # A comparison price displayed with a strikethrough for the initial price.
        strike_through_initial_price: nil,
        # A comparison price displayed with a strikethrough for the renewal price.
        strike_through_renewal_price: nil,
        # The 3D Secure behavior for this plan. Send null to inherit the account default.
        three_ds_level: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # The number of free trial days before the first charge on a recurring plan.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of plans belonging to a company, with optional
      # filtering by visibility, type, release method, and product.
      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::PlanListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::PlanListParams::Order::OrSymbol,
          plan_types: T::Array[String],
          product_ids: T::Array[String],
          release_methods: T::Array[String],
          visibilities: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PlanListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list plans for.
        company_id:,
        # A cursor; returns plans after this position.
        after: nil,
        # A cursor; returns plans before this position.
        before: nil,
        # Only return plans created after this timestamp.
        created_after: nil,
        # Only return plans created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # The number of plans to return (default and max 100).
        first: nil,
        # The number of plans to return from the end of the range.
        last: nil,
        # The field to sort results by. Defaults to created_at.
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
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the plan, which will look like plan\_******\*******.
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
