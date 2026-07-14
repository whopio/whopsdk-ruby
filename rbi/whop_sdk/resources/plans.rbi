# typed: strong

module WhopSDK
  module Resources
    # A Plan defines how customers buy a product. It controls pricing, billing
    # cadence, availability, tax behavior, checkout fields, and purchase visibility.
    #
    # Use the Plans API to create plans for products, list existing plans, retrieve or
    # update plan configuration, calculate tax for checkout, and delete plans that
    # should no longer be offered.
    class Plans
      # Create a new pricing plan for a product. The plan defines the billing interval,
      # price, and availability for customers.
      sig do
        params(
          account_id: String,
          adaptive_pricing_enabled: T.nilable(T::Boolean),
          billing_period: T.nilable(Integer),
          checkout_styling: T.nilable(T.anything),
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
          product_id: String,
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
        # The unique identifier of the account to create this plan for. Defaults to the
        # caller's account.
        account_id: nil,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled: nil,
        # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
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
        # Access duration in days before the membership expires.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # Initial amount charged in the plan's currency, e.g. 10.43 for $10.43.
        initial_price: nil,
        # Private notes visible only to the account owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Custom key-value pairs to store on the plan. Included in webhook payloads for
        # payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
        # string value.
        metadata: nil,
        # Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # account's defaults apply.
        payment_method_configuration: nil,
        # Plan billing type, such as `one_time` or `renewal`.
        plan_type: nil,
        # The unique identifier of the product to attach this plan to.
        product_id: nil,
        # Sales method for this plan, such as `buy_now` or `waitlist`.
        release_method: nil,
        # The amount charged each billing period for recurring plans, in the plan's
        # currency.
        renewal_price: nil,
        # Installment payments required before the subscription pauses.
        split_pay_required_payments: nil,
        # The maximum number of units available for purchase. Ignored when unlimited_stock
        # is true.
        stock: nil,
        # 3D Secure behavior for this plan. Send `null` to inherit the account default.
        three_ds_level: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # Free trial duration before the first recurring charge.
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
        # Plan ID, prefixed `plan_`.
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
        # Plan ID, prefixed `plan_`.
        id,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled: nil,
        # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
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
        # Access duration in days before the membership expires.
        expiration_days: nil,
        # An image displayed on the product page to represent this plan.
        image: nil,
        # Initial amount charged in the plan's currency, e.g. 10.43 for $10.43.
        initial_price: nil,
        # Private notes visible only to the account owner. Not shown to customers.
        internal_notes: nil,
        # Whether this plan uses legacy payment method controls.
        legacy_payment_method_controls: nil,
        # Custom key-value pairs to store on the plan. Included in webhook payloads for
        # payment and membership events. Max 50 keys, 100 chars per key, 500 chars per
        # string value.
        metadata: nil,
        # Whether to offer a retention discount when a customer attempts to cancel.
        offer_cancel_discount: nil,
        # Override the default tax classification for this specific plan.
        override_tax_type: nil,
        # Explicit payment method configuration for the plan. When not provided, the
        # account's defaults apply.
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
        # 3D Secure behavior for this plan. Send `null` to inherit the account default.
        three_ds_level: nil,
        # The display name of the plan shown to customers on the product page.
        title: nil,
        # Free trial duration before the first recurring charge.
        trial_period_days: nil,
        # Whether the plan has unlimited stock. When true, the stock field is ignored.
        unlimited_stock: nil,
        # Whether the plan is visible to customers or hidden from public view.
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of plans belonging to an account, with optional
      # filtering by visibility, type, release method, and product.
      sig do
        params(
          account_id: String,
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
        # The unique identifier of the account to list plans for.
        account_id:,
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
        # Plan ID, prefixed `plan_`.
        id,
        request_options: {}
      )
      end

      # Previews tax for a plan before checkout, based on the buyer's location.
      sig do
        params(
          id: String,
          address: T.nilable(WhopSDK::PlanCalculateTaxParams::Address::OrHash),
          ip_address: String,
          tax_ids:
            T.nilable(T::Array[WhopSDK::PlanCalculateTaxParams::TaxID::OrHash]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PlanCalculateTaxResponse)
      end
      def calculate_tax(
        # Plan ID, prefixed `plan_`.
        id,
        # Buyer billing address used for tax calculation. Provide either `address.country`
        # or `ip_address`; include state and postal code when available for more accurate
        # results.
        address: nil,
        # Buyer IP address used to infer location when no billing address is provided.
        ip_address: nil,
        # Optional buyer tax ID for B2B exemptions. At most one entry is supported.
        tax_ids: nil,
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
